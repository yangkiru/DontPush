var gap = 50;
if (x <= gap) image_angle = -90;
else if (x >= room_width - gap) image_angle = 90;
else if (y <= gap) image_angle = 180;
else if (y >= room_height - gap) image_angle = 0;