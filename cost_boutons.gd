extends HBoxContainer

var pressed = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func handle_pressed_buttons(cost: int) -> void:
	var is_here = pressed.find(cost)
	if (is_here == -1):
		pressed.append(cost)
	else:
		pressed.pop_at(is_here)

func _on_one_pressed() -> void:
	handle_pressed_buttons(1)

func _on_two_pressed() -> void:
	handle_pressed_buttons(2)

func _on_three_pressed() -> void:
	handle_pressed_buttons(3)

func _on_four_pressed() -> void:
	handle_pressed_buttons(4)

func _on_five_pressed() -> void:
	handle_pressed_buttons(5)

func _on_six_pressed() -> void:
	handle_pressed_buttons(6)

func _on_sevenn_pressed() -> void:
	handle_pressed_buttons(7)

func _on_eight_pressed() -> void:
	handle_pressed_buttons(8)

func _on_nine_pressed() -> void:
	handle_pressed_buttons(9)

func _on_ten_pressed() -> void:
	handle_pressed_buttons(10)

func _on_control_launch_search() -> void:
	GlobalVar.research_cost = pressed
