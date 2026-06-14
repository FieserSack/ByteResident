extends Node
## JSON persistence (ADR 0008).

const SAVE_DIR_NAME := "ByteResident"
const SCHEMA_VERSION := 1

var save_directory: String = ""


func _ready() -> void:
	save_directory = _resolve_save_directory()


func _resolve_save_directory() -> String:
	var base := OS.get_user_data_dir()
	if OS.get_name() == "Windows":
		var appdata := OS.get_environment("APPDATA")
		if not appdata.is_empty():
			base = appdata.path_join(SAVE_DIR_NAME)
		else:
			base = base.path_join(SAVE_DIR_NAME)
	else:
		base = base.path_join(SAVE_DIR_NAME)
	_ensure_directory(base)
	return base


func _ensure_directory(path: String) -> void:
	if not DirAccess.dir_exists_absolute(path):
		DirAccess.make_dir_recursive_absolute(path)


func write_json(filename: String, data: Dictionary) -> Error:
	var payload := data.duplicate(true)
	payload["schema_version"] = SCHEMA_VERSION
	var path := save_directory.path_join(filename)
	var file := FileAccess.open(path, FileAccess.WRITE)
	if file == null:
		return FileAccess.get_open_error()
	file.store_string(JSON.stringify(payload, "\t"))
	return OK


func read_json(filename: String) -> Dictionary:
	var path := save_directory.path_join(filename)
	if not FileAccess.file_exists(path):
		return {}
	var file := FileAccess.open(path, FileAccess.READ)
	if file == null:
		return {}
	var parsed: Variant = JSON.parse_string(file.get_as_text())
	if typeof(parsed) != TYPE_DICTIONARY:
		return {}
	return parsed
