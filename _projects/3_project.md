---
layout: page
title: Bowling Ball Dynamics
description: MAE 5730 - Intermediate Dynamics course project
img:
importance: 3
category: School
---
[Bowling Ball Dynamics](/assets/pdf/ID5730Fall2023.pdf)  

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.html path="assets/video/bowling_ball.mp4" class="img-fluid rounded z-depth-1" controls=true %}
    </div>
</div>

Parameters and initial conditions used to produce the results above:
```matlab
% PARAMS REGULAR BALL
p.g = 9.81; % m s^-2
p.R = .1080; % m
p.m = 6.35; % kg
p.I1 = .001; % kg m^2
p.I2 = .001; % kg m^2
p.I3 = .03; % kg m^2

% INITS REGULAR BALL
x0 = 0; y0 = 0; z0 = p.R; % m
x_dot0 = 8; y_dot0 = -.45; z_dot0 = 0;% m/s
phi0 = deg2rad(90); theta0 = deg2rad(90); psi0 = deg2rad(0); % rad
phi_dot0 = 0; theta_dot0 = 0; psi_dot0 = -30; % rad/s
position0 = [x0 y0 z0 x_dot0 y_dot0 z_dot0]';
attitude0 = [phi0 theta0 psi0 phi_dot0 theta_dot0 psi_dot0]';
X0 = [position0;attitude0];
```