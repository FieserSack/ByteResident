class_name PersonalityState
extends RefCounted
## Traits, relationship and memory context for dialogue and behavior.

var traits: Dictionary = {}
var relationship_trust: float = 0.0
var display_name: String = ""
var memories: Array[String] = []


func has_name() -> bool:
	return display_name.strip_edges().length() > 0


func to_context_dict() -> Dictionary:
	return {
		"traits": traits,
		"relationship_trust": relationship_trust,
		"display_name": display_name,
		"memories": memories,
	}


static func create_random() -> PersonalityState:
	var state := PersonalityState.new()
	state.traits = {
		"sociability": randf(),
		"stubbornness": randf(),
		"humor": randf(),
	}
	return state
