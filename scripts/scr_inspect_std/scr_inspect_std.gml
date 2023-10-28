/// @arg item
var item = argument0;
if (item[? "can_use"]) {
	var uses = "use"; if (item[? "use_amount"] > 1) uses = "uses";
	scr_message(string(item[? "desc"]) + " with " + string(item[? "use_amount"]) + " " + string(uses) + " left");
} else {
	scr_message(item[? "desc"]);
}