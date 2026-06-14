class_name DialogueProvider
extends RefCounted
## Base interface for scripted and AI dialogue backends.


func generate_response(
	_user_message: String,
	_personality: PersonalityState,
	_context: Dictionary
) -> String:
	push_error("DialogueProvider.generate_response must be overridden")
	return ""
