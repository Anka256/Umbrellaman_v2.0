draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fn_arial10);


if (room ==  Store)
{
	draw_set_color(c_red);
}
else
{
	draw_set_color(c_white);
}
draw_text(120, 240, "Coin: " + string(global.coin));
