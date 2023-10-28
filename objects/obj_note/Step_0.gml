/// @description Insert description here
// You can write your code in this editor

//19 symbols 13 lines

if (checked = 0) {
	var m_symbols = 19;
	var m_lines = 13;
	var word = "";
	var lines = [""];
	for (var j = 0; j < m_lines; j ++) {
		lines[j] = "";
	}
	var cline = 0;
	var page = 0;
	var newpage = 0;
	var templine = "";
	var tempnewline = 0;
	for (var i = 1; i <= string_length(text); i++) {
		var char = string_char_at(text, i);
		word += char;
		
		var eow = (char == " " || char == "\n");
		var eof = (i == string_length(text));
		
		if (eow || eof) {
			var enl = (char == "\n");
			if (enl) {
				word = string_copy(word, 1, string_length(word) - 1);
			}
			if (string_length(lines[cline] + word) > m_symbols) {
				cline ++;
				lines[cline] = "";
				newpage = (cline == m_lines);
				if (newpage) {
					templine = word;
					if (enl) {
						tempnewline = 1;
					}
				} else {
					lines[cline] = word;
				}
			} else {
				lines[cline] += word;
			}
			if (enl && !newpage) {
				cline ++;
				lines[cline] = "";
				newpage = (cline == m_lines);
			}
			if (eof) {newpage = 1;}
			if (newpage) {
				pages[page] = "";
				for (var j = 0; j < m_lines; j ++) {
					pages[page] += lines[j] + "\n";
					lines[j] = "";
				}
				page ++;
				cline = 0;
				lines[cline] = "";
				if (string_length(templine)) {
					lines[cline] = templine;
					if (tempnewline) {
						cline ++;
						lines[cline] = "";
					}
					tempnewline = 0;
				}
				templine = "";
				newpage = 0;
			}
			word = "";
		}
	}
	
	checked = 1;
}