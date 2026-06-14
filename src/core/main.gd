extends Node
## Root scene: wires apartment view and chat UI.


func _ready() -> void:
	DialogueManager.response_generated.connect(_on_dialogue_response)


func _on_dialogue_response(text: String) -> void:
	var chat: Node = get_node_or_null("ChatUI")
	if chat and chat.has_method("append_resident_message"):
		chat.append_resident_message(text)
