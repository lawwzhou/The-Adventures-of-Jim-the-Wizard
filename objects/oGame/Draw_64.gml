if (room != home) && (instance_exists(obj_player))
{
	textscale = max(textscale * 0.95, 1);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-320, 10," Score: " + string(global.points), textscale, textscale, 0);
	draw_text_transformed(RES_W-290, 70, "Lives: " + string(global.lives), textscale, textscale, 0);
	draw_text_transformed(0, 10, "Find the doors \nand beat the boss!", textscale, textscale, 0);
}
