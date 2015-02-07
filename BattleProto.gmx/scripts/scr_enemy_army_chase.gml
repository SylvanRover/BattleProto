/// scr_ship_chase()

// set friction
friction = 0;

// Move towards the target
if (instance_exists(foe)) {
    // Attack the foe when we reach it
    if (distance_to_point(foe.x, foe.y) <= 64) {
        state = 'attack';
    } else {
        motion_add(point_direction(x, y, foe.x, foe.y), acc);
    }
}

// Clamp Speed
if (speed > spd) speed = spd;
