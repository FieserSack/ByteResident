extends CharacterBody2D
## Autonomous resident: movement and needs (prototype stub).

const WALK_SPEED := 80.0

var _direction: float = 1.0


func _ready() -> void:
	GameState.tick_elapsed.connect(_on_game_tick)


func _physics_process(delta: float) -> void:
	velocity.x = _direction * WALK_SPEED
	velocity.y = 0.0
	move_and_slide()
	_flip_on_wall_hit()


func _flip_on_wall_hit() -> void:
	if is_on_wall():
		_direction *= -1.0


func _on_game_tick(_sim_minutes: float) -> void:
	pass
