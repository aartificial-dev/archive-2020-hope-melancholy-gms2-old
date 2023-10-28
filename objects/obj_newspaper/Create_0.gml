/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var text = "Tyrell: [Tyrell explains to Roy why he can't extend his lifespan] The facts of life... to make an alteration in the evolvement of an organic life system is fatal. A coding sequence cannot be revised once it's been established.\n\nBatty: Why not?\n\nTyrell: Because by the second day of incubation, any cells that have undergone reversion mutation give rise to revertant colonies, like rats leaving a sinking ship; then the ship... sinks.\n\nBatty: What about EMS-3 recombination?\n\nTyrell: We've already tried it - ethyl, methane, sulfinate as an alkylating agent and potent mutagen; it created a virus so lethal the subject was dead before it even left the table.\n\nBatty: Then a repressor protein, that would block the operating cells.\n\nTyrell: Wouldn't obstruct replication; but it does give rise to an error in replication, so that the newly formed DNA strand carries with it a mutation - and you've got a virus again... but this, all of this is academic. You were made as well as we could make you.\n\nBatty: But not to last.\n\nTyrell: The light that burns twice as bright burns half as long - and you have burned so very, very brightly, Roy. Look at you: you're the Prodigal Son; you're quite a prize!\n\nBatty: I've done... questionable things.\n\nTyrell: Also extraordinary things; revel in your time.\n\nBatty: Nothing the God of biomechanics wouldn't let you into heaven for.";

item = inv_item_create(spr_news_inv, spr_news_floor, "Newspaper", "Old newspaper from neighbour district", scr_note, 1, 9999, [text, note_type.news], scr_inspect_nouse);