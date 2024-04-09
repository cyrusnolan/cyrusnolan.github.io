---
layout: page
title: Magneto Spacecraft Guidance & Control
description: Orbit-raising and station keeping by optimal transfer of spacecraft spin angular momentum to orbital angular momentum using the gravity gradient.
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
<div class="caption">
    Figure (1): Note: units are meters
</div>
When a smaller body tidally locks to a larger body, its angular velocity in the local vertical local horizontal (LV-LH) coordinate system decays to 0. The torque responsible for this decay is caused by gravity. If the smaller body was a perfect sphere with no elasticity, it would not tidally lock. However, due to the gravity gradient and the body's elasticity, it bulges. When locked to the larger body, the bulge is aligned with local vertical (nadir). However, when still spinning in the LV-LH coordinate system, the bulge is not aligned with nadir. This results in a net torque on the smaller body per full rotation in the LV-LH coordinate system. It also results in a net torque on the smaller body about the larger body, which increases or decreases orbital angular momentum (depending on the spin direction of smaller body). The smaller body's angular momentum about its center of mass is transferred to orbital angular momentum.

The Magneto spacecraft aims to demonstrate that this effect can be used for orbit raising and station keeping. The spacecraft uses energy to maintain its angular velocity, which is continously transferred to orbital energy via the gravity gradient. The spacecraft is made up of a central, light truss and 4 payload masses connected to it with tethers. The tethers can be paid in and out, which control the size and location of the "bulge" and the magnitude of the gravity gradient effects. By generating and tracking optimal tether length trajectories, the spacecraft can maximize its increase in orbital angular momentum.

One might want to use this method rather than an ion thruster because this method scales with mass. It generates a fixed change in specific angular momentum (m^2/s - per unit mass) for a given reference trajectory. On the other hand, a single ion thruster provides a fixed amount of thrust. As the spacecraft become more massive, an increasingly large number of ion thrusters would be needed to achieve the same performance. Additionally, since the gravity gradient method calls for a spinning spacecraft with a large radius, it could be a useful feature for the large, artificial gravity space stations of the coming years.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/tether_length.png" title="tether length" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (2): Tethers one and two connect one of the four payload masses (mass a) to the central truss. The changes in length are due to their elasticity; they aren't being paid in or out here.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/a_T_16.png" title="semimajor axis" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (3): The spacecraft's semimajor axis increases by around 8 mm over 16 orbits (approximately 24 hours). In this simulation run, the tethers are not being paid in and out, so their range of lengths is very small. Modulating their length will massively increase the effect.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/e_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (4): The gravity gradient effectively provides a small, constant thrust, so the orbit's eccentricity increases over the first half of a period and re-circularizes to its initial value over the second half.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/HG_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (5): The spacecraft's angular momentum about its center of mass is decreasing in magnitude because its becoming less negative.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/HGo_T_16.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Figure (6): The spacecraft's orbital angular momentum is increasing because its becoming more negative.
</div>
