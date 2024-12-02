/// @function string_wrap(text, max_width)
/// @param text The text to wrap
/// @param max_width The maximum width for the text
/// @returns A string with line breaks added for wrapping

function string_wrap(text, max_width) {
    var result = "";
    var words = string_split(text, " ");
    var line = "";

    for (var i = 0; i < array_length(words); i++) {
        var test_line = line + words[i] + " ";
        if (string_width(test_line) > max_width) {
            result += string_trim(line) + "#";
            line = words[i] + " ";
        } else {
            line = test_line;
        }
    }

    result += string_trim(line); // Add the final line
    return result;
}
