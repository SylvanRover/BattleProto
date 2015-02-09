/// scr_move_view()
// Get keyboard input

var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));

// Move the view according to the keyboard input
if (right) {
    view_xview[0] += 10;
}
if (left) {
    view_xview[0] -= 10;
}
if (up) {
    view_yview[0] -= 10;
}
if (down) {
    view_yview[0] += 10;
}