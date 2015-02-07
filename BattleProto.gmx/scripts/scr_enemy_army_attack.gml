/// scr_enemy_army_attack();

image_blend = c_red;
friction = .5;

if (instance_exists(foe) && foe != -1) {
    direction = point_direction(x, y, foe.x, foe.y);
    
    if (distance_to_point(foe.x, foe.y) > 96) {
        image_blend = c_white;
        state = 'chase';
    }
}
