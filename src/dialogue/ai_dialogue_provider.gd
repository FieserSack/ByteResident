class_name AiDialogueProvider
extends DialogueProvider
## Optional local LLM provider (Ollama). Stub until KI plugin is implemented.


const OLLAMA_URL := "http://127.0.0.1:11434/api/chat"
const DEFAULT_MODEL := "qwen3:4b"


func is_available() -> bool:
	# TODO: ping Ollama when KI plugin is installed
	return false


func generate_response(
	_user_message: String,
	_personality: PersonalityState,
	_context: Dictionary
) -> String:
	if not is_available():
		return "KI-Dialog ist noch nicht installiert."
	push_warning("AiDialogueProvider not implemented yet")
	return "…"
