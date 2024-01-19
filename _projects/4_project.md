---
layout: page
title: Pontryagin Trajectory Optimization
description: MAE 5830 - Astronautic Optimization course project
img:
importance: 4
category: School
---
[Pontryagin Trajectory Optimization](/assets/pdf/AO5830Fall2023.pdf)  

Simulink model overview:
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/aomodel.jpg" title="simulation overview" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Simulation results with inertia variation and noisy sensors where $$J = u^2$$:
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/rtoc_example.jpg" title="RTOC" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/PV_example.jpg" title="PV" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

```matlab
% PV Gains
zeta = 0.7;
ts = .9;
tol = .05;
wn = -log(tol*sqrt(1-zeta^2))/(zeta*ts);
kp = wn^2;
kv = 2*zeta*wn;
```