---
layout: page
title: Magneto Spacecraft Guidance & Control
description: Orbit-raising by optimal transfer of spacecraft spin angular momentum to orbital angular momentum using the gravity gradient.
img: assets/img/magneto_cover.png
importance: 1
category:
---
[https://github.com/cyrusnolan/magneto](https://github.com/cyrusnolan/magneto)
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/spacecraft_trajectory.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
When a smaller body tidally locks to a larger body, its angular velocity in the local vertical - local horizontal coordinate system decays to 0. The torque responsible for this decay is caused by gravity. If the smaller body was a perfect sphere with no elasticity, it would not tidally lock. However, interplay between the gravity gradient and the body's elasticity causes it to bulge. When locked to the larger body, the bulge is aligned with nadir. However, when still spinning in the lvlh coordinate system, the bulge is not aligned with nadir. This, along with the gravity gradient, results in a net torque. It also results in a net force that can increase or decrease orbital angular momentum. As the smaller body slows down, the lost spin angular momentum is added to its orbital angular momentum.

The Magneto spacecraft aims to demonstrate that this effect can be used for orbit raising and station keeping. The spacecraft uses energy to maintain its angular velocity, which is continously transferred to orbital energy via the gravity gradient. The spacecraft is made up of a central, light truss and 4 payload masses connected to it with tethers. The tethers can be paid in and out, which controls the magnitude of the gravity gradient effects. The spacecraft must generate optimal trajectories for each payload mass and track those trajectories by paying the tethers in and out.

One might want to use the gravity gradient method rather than an ion thruster because the gravity gradient method scales with mass, while a single ion thruster provides a fixed amount of thrust. As spacecraft become more massive, an increasingly large number of ion thrusters would be needed to achieve the same performance. Additionally, since the gravity gradient method calls for a spinning spacecraft with a large radius, it could work well with the large, artifical gravity space stations of the coming years.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/tether_length.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (1): Changes in tether length of the two tethers connecting payload "mass a" to the central truss due to their elasticity. They are not being paid in or out here.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/a_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (2): The spacecraft's orbit increases, however note that the semi-major axis is not always increasing. During each full rotation of the spacecraft, the gravity gradient effect adds and subtracts orbital energy. However, because the max tether length does not occur at nadir (local vertical), there is a net torque and force on the spacecraft each rotation.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/e_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (3): The gravity gradient effectively provides a small, constant trust, so the orbit starts to become eccentric for the first half of an orbit and re-circularizes over the second half.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/HG_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (4): Spacecraft spin angular momentum is decreasing in magnitude because its becoming less negative.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/HGo_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (5): Spacecraft orbital angular momentum is increasing because its becoming more negative.
</div>
