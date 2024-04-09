---
layout: page
title: Kalman Filter for Mass-Spring-Damper System
description: Estimate position velocity of masses connected by springs and dampers given position measurements of one mass
img: assets/img/q1zq1.png
importance: 2
category:
---
[https://github.com/cyrusnolan/mass-spring-damper-KF](https://github.com/cyrusnolan/mass-spring-damper-KF)

Initial condition response where mass 5 has an initial displacement:
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/mass_spring_damper_sys.png" title="mass spring damper system" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/q1zq1.png" title="estimated mass 1 positon given measurements of mass 1 position" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/q5zq1.png" title="estimated mass 5 positon given measurements of mass 1 position" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
