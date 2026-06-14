extends CanvasLayer
## Chat input and history (player talks only to own resident).


@onready var _history: RichTextLabel = $Panel/VBox/History
@onready var _input: LineEdit = $Panel/VBox/InputRow/Input
@onready var _send: Button = $Panel/VBox/InputRow/Send


func _ready() -> void:
	_send.pressed.connect(_on_send_pressed)
	_input.text_submitted.connect(_on_text_submitted)


func _on_send_pressed() -> void:
	_submit(_input.text)


func _on_text_submitted(text: String) -> void:
	_submit(text)


func _submit(text: String) -> void:
	var trimmed := text.strip_edges()
	if trimmed.is_empty():
		return
	append_player_message(trimmed)
	_input.clear()
	DialogueManager.submit_player_message(trimmed)


func append_player_message(text: String) -> void:
	_history.append_text("\n[b]Du:[/b] %s" % text)


func append_resident_message(text: String) -> void:
	var name_label := "Bewohner"
	if DialogueManager.personality.has_name():
		name_label = DialogueManager.personality.display_name
	_history.append_text("\n[b]%s:[/b] %s" % [name_label, text])
