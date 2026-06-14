extends Node
## Routes player messages to the active dialogue provider.

signal response_generated(text: String)

enum ProviderMode { SCRIPTED, AI }

var provider_mode: ProviderMode = ProviderMode.SCRIPTED
var personality: PersonalityState = PersonalityState.create_random()

var _scripted: ScriptedDialogueProvider = ScriptedDialogueProvider.new()
var _ai: AiDialogueProvider = AiDialogueProvider.new()


func submit_player_message(message: String) -> void:
	var trimmed := message.strip_edges()
	if trimmed.is_empty():
		return
	var context := _build_context()
	var response := _get_active_provider().generate_response(trimmed, personality, context)
	response_generated.emit(response)


func _get_active_provider() -> DialogueProvider:
	if provider_mode == ProviderMode.AI and _ai.is_available():
		return _ai
	return _scripted


func _build_context() -> Dictionary:
	return {
		"sim_time_minutes": GameState.sim_time_minutes,
		"personality": personality.to_context_dict(),
	}
