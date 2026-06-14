class_name ScriptedDialogueProvider
extends DialogueProvider
## Hybrid scripted dialogue: intent detection + response pools (ADR 0009).

const INTENT_GREETING := "GREETING"
const INTENT_ASK_FOOD := "ASK_FOOD"
const INTENT_ASK_SLEEP := "ASK_SLEEP"
const INTENT_ASK_NAME := "ASK_NAME"
const INTENT_SMALLTALK := "SMALLTALK"
const INTENT_REQUEST := "REQUEST"
const INTENT_UNKNOWN := "UNKNOWN"

const _GREETING_KEYWORDS := ["hallo", "hi", "hey", "guten tag", "moin"]
const _FOOD_KEYWORDS := ["hunger", "essen", "trinken", "hungrig"]
const _SLEEP_KEYWORDS := ["müde", "schlaf", "schlafen", "nickerchen"]
const _NAME_KEYWORDS := ["name", "heißt", "nennen"]
const _SMALLTALK_KEYWORDS := ["wie geht", "was machst", "alles klar"]


func generate_response(
	user_message: String,
	personality: PersonalityState,
	_context: Dictionary
) -> String:
	var intent := _detect_intent(user_message)
	return _pick_response(intent, personality, _context)


func _detect_intent(message: String) -> String:
	var normalized := message.to_lower().strip_edges()
	if _contains_any(normalized, _GREETING_KEYWORDS):
		return INTENT_GREETING
	if _contains_any(normalized, _FOOD_KEYWORDS):
		return INTENT_ASK_FOOD
	if _contains_any(normalized, _SLEEP_KEYWORDS):
		return INTENT_ASK_SLEEP
	if _contains_any(normalized, _NAME_KEYWORDS):
		return INTENT_ASK_NAME
	if _contains_any(normalized, _SMALLTALK_KEYWORDS):
		return INTENT_SMALLTALK
	if normalized.begins_with("bitte") or normalized.contains("kannst du"):
		return INTENT_REQUEST
	return INTENT_UNKNOWN


func _contains_any(text: String, keywords: Array) -> bool:
	for keyword in keywords:
		if text.contains(keyword):
			return true
	return false


func _pick_response(intent: String, personality: PersonalityState, _context: Dictionary) -> String:
	var pools: Dictionary = {
		INTENT_GREETING: [
			"Hallo. Wer bist du eigentlich?",
			"Oh, hi. Ich war gerade beschäftigt.",
			"Hey. Schön, dass du da bist.",
		],
		INTENT_ASK_FOOD: [
			"Ich überlege, ob ich was essen soll.",
			"Mein Magen knurrt ein bisschen.",
			"Vielleicht später. Ich bin gerade nicht so hungrig.",
		],
		INTENT_ASK_SLEEP: [
			"Ich könnte bald eine Pause gebrauchen.",
			"Gähn… ein kurzes Nickerchen wäre nicht schlecht.",
			"Ich bin noch wach, aber müde.",
		],
		INTENT_ASK_NAME: [
			"Ich habe noch keinen Namen. Hast du einen Vorschlag?",
			"Nenn mich, wie du willst — ich entscheide dann.",
			"Ein Name… darüber müssen wir reden.",
		],
		INTENT_SMALLTALK: [
			"Ach, dies und das. Du kennst das.",
			"Ich schaue mich hier um.",
			"Nicht viel. Und bei dir?",
		],
		INTENT_REQUEST: [
			"Hm. Ich überlege mir das.",
			"Vielleicht. Ich bin nicht sicher.",
			"Ich mache das in meinem eigenen Tempo.",
		],
		INTENT_UNKNOWN: [
			"Hmm? Das habe ich nicht ganz verstanden.",
			"Erzähl mir das nochmal anders.",
			"Darüber weiß ich gerade nichts zu sagen.",
		],
	}
	var options: Array = pools.get(intent, pools[INTENT_UNKNOWN])
	var index := randi() % options.size()
	var line: String = options[index]
	if personality.has_name():
		line = line.replace("{name}", personality.display_name)
	return line
