draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fn_arial10);
draw_text(120, 224, "Coin: " + string(global.coin));

if (room ==  Store)
{
	draw_set_color(c_red);
}
else
{
	draw_set_color(c_white);
}
