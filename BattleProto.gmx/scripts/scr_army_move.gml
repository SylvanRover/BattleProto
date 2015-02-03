/// scr_army_move

// Set the friction
friction = 0;

// Move towards the target if it exists
if (instance_exists(target)){
    motion_add(point_direction(x, y, target.x, target.y), acc);
    
    // Delete the target when we reach it
    if (position_meeting(x, y, target)){
        with (target) instance_destroy();
        state = 'idle';
    }
}

// Speed Clamp
if (speed > spd) speed = spd;
