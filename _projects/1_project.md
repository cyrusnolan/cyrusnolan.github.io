---
layout: page
title: Magneto-Attitude Propulsion
description: Master of Engineering Project, advised by Dr. Mason Peck.
img:
importance: 1
category: School
---
[Magneto-Attitude Propulsion Fall 2023 Progress Report](/assets/pdf/MagnetoFall2023Progress.pdf)  
  
Simulink model overview:
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/map_full_sim.jpg" title="simulation overview" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Example initial conditions:
```matlab
% mission.StartDate = datetime(2021,1,1,12,0,0); % specify start date
mission.StartDate = datetime; % start date is current time
mission.Duration = hours(3);
mission.mdl = "spacecraft_model";
open_system(mission.mdl);

% Orbit init
orbit.semiMajorAxis = "7079e3";
orbit.inclination = "pi/2";
orbit.raan = "3*pi/2";
orbit.aol = "pi/2"; % argument of lattitude

% Attitude init
attitude0.q = "[0 -sin(pi/4) -sin(pi/4) 0]";
attitude0.w = "[0 0 0]";

% Gains
kp1 = 3.906e-3; kp2 = 3.906e-3; kp3 = 3.906e-3;
kd1 = 0.1; kd2 = 0.1; kd3 = 0.1;

% configure orbit
orbit.blk = mission.mdl + "/Orbit Propagator";
set_param(orbit.blk, ...
    startDate = "juliandate(mission.StartDate)", ...
    semiMajorAxis = orbit.semiMajorAxis, ...
    inclination = orbit.inclination, ...
    raan = orbit.raan, ...
    argLat = orbit.aol, ...
    centralBody = "Earth");

% configure attitude
attitude.blk = mission.mdl + "/Attitude Dynamics";
set_param(attitude.blk, ...
    startDate = "juliandate(mission.StartDate)", ...
    attitude = attitude0.q, ...
    attitudeRate = attitude0.w);

set_param(mission.mdl, ...
    "SolverType", "Variable-step", ...
    "SolverName", "VariableStepAuto", ...
    "RelTol",     "0.5e-9", ...
    "AbsTol",     "1e-9", ...
    "MaxStep",    "5", ...
    "MinStep",    "auto", ...
    "StopTime",   string(seconds(mission.Duration)), ...
    "SaveOutput", "on", ...
    "OutputSaveName", "yout", ...
    "SaveFormat", "Dataset", ...
    "DatasetSignalFormat", "timetable");
```

The following plots show simulation results for 3 hours. There are 3 coordinate systems: N, B, and O. N is an Earth-centered inertial coordniate system. B is a spacecraft body-fixed coordinate system. O is a spacecraft-fixed orbit coordinate system, where o3 points from the spacecraft towards Earth's center, o2 points opposite the spacecraft's angular momentum, and o1 points in o2 x o3. In this run, the controller is setup to track the O coordinate system, so the B coordinate system follows the O coordinate system.
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/Nr.jpg" title="Spacecraft Position" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Spacecraft position in N coordinates.
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/Nv.jpg" title="Spacecraft Velocity" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Spacecraft velocity in N coordinates
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/BqN.jpg" title="Inertial Orientation" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Quaternion (scalar last) rotation from N coordiantes to B coordinates
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/BqO.jpg" title="Orbit Orientation" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Quaternion (scalar last) rotation from O coordinates to B coordinates
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/bwbn.jpg" title="Body Rate" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Angular velocity in B coordinates of the B coordinate system relative to the N coordinate system
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/bwbo.jpg" title="Body Rate" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Angular velocity in B coordinates of the B coordinate system relative to the O coordinate system
</div>