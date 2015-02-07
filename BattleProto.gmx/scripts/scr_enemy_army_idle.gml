/// scr_enemy_army_idle()

// Set friction
friction = .5;

if (foe != -1 && instance_exists(foe)) {
    if (distance_to_point (foe.x, foe.y) <= los) {
        state = 'chase';
    }
}
