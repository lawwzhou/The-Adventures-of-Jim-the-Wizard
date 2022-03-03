
xx = room_width/2 - 150
yy = 100;
draw_set_font(spr_font);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(xx, 100, "Scoreboard");
draw_text(xx, 700, "Click Backspace to go back");
for (i = 0; i<10; i++) 
{
  yy += 50;
  draw_text(xx, yy, string (global.points_array[i, 0]));
  draw_text(xx + 200, yy, string (global.points_array[i, 1]));
}
