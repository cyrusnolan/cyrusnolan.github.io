---
layout: page
title: Control of Inverted Pendulum
description: MAE 5780 - Feedback Control Systems lab
img:
importance: 5
category: School
---
In the first video, I control the inverted pendulum using state feedback with an observer for state estimation. The system is single input multiple output, where the input is force on the cart and the outputs are cart position and pendulum angle. In the second video, I control the pendulum using a SISO lead-lag controller. The input is still force, and the output is $$x = x_{cart} - \frac{2}{3}L_{pend}\theta$$.
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.html path="assets/video/statefeedback.mp4" class="img-fluid rounded z-depth-1" controls=true %}
    </div>
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.html path="assets/video/leadlag.mp4" class="img-fluid rounded z-depth-1" controls=true %}
    </div>
</div>