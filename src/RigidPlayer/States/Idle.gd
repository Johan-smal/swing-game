tool
extends State

func unhandled_input(event: InputEvent) -> void:
	_parent.unhandled_input(event)
	
func physics_process(delta: float) -> void:
	if owner.is_on_floor() and _parent.get_move_direction().x != 0.0:
		_state_machine.transition_to("Move/Run")
	elif not owner.is_on_floor():
		_state_machine.transition_to("Move/Air")
	else:
		_parent.physics_process(delta)
		
func enter(msg: Dictionary = {}) -> void:
	_parent.enter(msg)
	
func exit() -> void:
	_parent.exit()
