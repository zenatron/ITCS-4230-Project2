/// @description Draw Dialog
// Evelyn Hosana - 12/4/24

if (show_dialog) {
    // define rectangle dimensions
    var rect_width = display_get_width() - 100;
    var rect_height = 150;
    var rect_x1 = (display_get_width() - rect_width) / 2;
    var rect_y1 = display_get_height() - rect_height - 20; // 20px padding from bottom
    var rect_x2 = rect_x1 + rect_width;
    var rect_y2 = display_get_height() - 20;

    // draw black background rectangle
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);

    // draw dialog text
    draw_set_alpha(1);
    draw_set_color(c_white);
	draw_set_font(f_goth_body);

    // wrap text
    var wrapped_text = scr_word_wrap(dialog_text, rect_width - 40); // 20px padding on each side
    for (var i = 0; i < array_length(wrapped_text); i++) {
        draw_text(rect_x1 + 20, rect_y1 + 20 + (i * string_height(wrapped_text[i])), wrapped_text[i]);
    }

    // draw 'Press Enter to Continue'
    draw_text((rect_width / 2) - 100, rect_y1 + 100, cont);
}
