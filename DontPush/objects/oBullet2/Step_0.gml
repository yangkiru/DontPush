var pd = point_direction(phy_position_x, phy_position_y, mouse_x, mouse_y);

phy_angular_velocity = 0;
phy_rotation = -pd;
physics_apply_local_impulse(0, 0, 100, 0);