
// distance clamped to positive values
var dist = clamp(point_distance(x, y, target.x, target.y) - deadZoneRadius, 0, slowingCameraRadius)
var perc = clamp(dist / slowingCameraRadius, 0, 1)

// ease based on prozentual distance, taking deadszone and slowing Radius into account
var camSpeed = ease_out_cubic(perc, minCameraSpeed, maxCameraSpeed-minCameraSpeed,1)

// moving camera target towards character
angle = point_direction(x, y, target.x, target.y)
x += lengthdir_x(camSpeed, angle);
y += lengthdir_y(camSpeed, angle);