draw_set_halign(fa_left)
draw_set_font(main_font)
draw_sprite(spr_text_box, 0, x, y)
draw_text_ext(x+10, y+10, text, string_height(text), sprite_width)