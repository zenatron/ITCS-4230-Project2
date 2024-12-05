// Evelyn Hosana - 12/4/24

/// @function scr_menu_box(mode)
/// @description draws a semitransparent rectangle with word-wrapped text
/// @param mode - specifies type of menu text to draw (controls, help, credits)
function scr_menu_box(mode) {
    // set rectangle dimensions
    var rect_width = 400;
    var rect_height = 300;
    var screen_width = display_get_width();
    var screen_height = display_get_height();

    // calculate rectangle position
    var x1 = screen_width / 2 + (screen_width / 4 - rect_width / 2); // center between middle and right
    var x2 = x1 + rect_width; // right side of rectangle
    var y1 = screen_height / 2 - rect_height / 2; // top of rectangle
    var y2 = y1 + rect_height; // bottom of rectangle

    // draw rectangle
    draw_set_alpha(0.5); // set transparency
    draw_set_color(c_black); // set rectangle color
    draw_rectangle(x1, y1, x2, y2, false); // draw rectangle
    draw_set_alpha(1); // reset transparency

    // get text for current mode
    var text = scr_menu_text(mode);

    // word-wrap text
    var wrapped_text = scr_word_wrap(text, rect_width - 20); // padding

    // draw wrapped text
    var line_height = 20;
    var text_x = x1 + 10; // add padding from left side
    var text_y = y1 + 10; // add padding from top

    for (var i = 0; i < array_length(wrapped_text); i++) {
        draw_text(text_x, text_y + (i * line_height), wrapped_text[i]);
    }
}

/// @function scr_menu_text(mode)
/// @description returns appropriate text for menu mode
/// @param mode - mode to display (controls, help, credits)
function scr_menu_text(mode) {
    // return text based on mode
    if (mode == "controls") {
        return "Use arrow keys to move and space to jump. Press Enter to interact.";
    } else if (mode == "help") {
        return "This is the help menu. Here you can learn about the controls and objectives of the game.";
    } else if (mode == "credits") {
        return "Game developed by [Your Name]. Special thanks to all contributors and testers!";
    } else {
        return ""; // default to empty text
    }
}
