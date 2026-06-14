extends Node
## Global game state and tick timing.

signal tick_elapsed(sim_minutes: float)

const TICK_SECONDS := 1.0

var sim_time_minutes: float = 0.0
var is_paused: bool = false

@onready var _tick_timer: Timer = _create_tick_timer()


func _ready() -> void:
	add_child(_tick_timer)
	_tick_timer.timeout.connect(_on_tick)


func _create_tick_timer() -> Timer:
	var timer := Timer.new()
	timer.wait_time = TICK_SECONDS
	timer.autostart = true
	return timer


func _on_tick() -> void:
	if is_paused:
		return
	sim_time_minutes += 1.0
	tick_elapsed.emit(sim_time_minutes)
