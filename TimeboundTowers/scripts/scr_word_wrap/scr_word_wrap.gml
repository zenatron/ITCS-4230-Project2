/// @function scr_word_wrap(text, width)
/// @description Wraps Text to Fit within a Specified Width
/// @param text - text to wrap
/// @param width - maximum width of text
// Evelyn Hosana - 12/4/24
function scr_word_wrap(text, width){
	var lines = []; // array to store lines
	var words = string_split(text, " "); // split text into words
	var current_line = "";

	for (var i = 0; i < array_length(words); i++) {
	    var test_line = current_line + words[i] + " ";
	    if (string_width(test_line) <= width) {
	        current_line = test_line;
	    } else {
	        array_push(lines, string_trim(current_line));
	        current_line = words[i] + " ";
	    }
	}
	if (string_length(current_line) > 0) {
	    array_push(lines, string_trim(current_line));
	}
	return lines;
}