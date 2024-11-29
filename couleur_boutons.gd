extends Node

@onready var couleur_boutons: HBoxContainer = %CouleurBoutons

var pressed = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func handle_pressed_buttons(color: String) -> void:
	var is_here = pressed.find(color)
	if (is_here == -1):
		pressed.append(color)
	else:
		pressed.pop_at(is_here)
		
func _on_rouge_pressed() -> void:
	handle_pressed_buttons("red")

func _on_bleu_pressed() -> void:
	handle_pressed_buttons("blue")

func _on_vert_pressed() -> void:
	handle_pressed_buttons("green")

func _on_jaune_pressed() -> void:
	handle_pressed_buttons("yellow")

func _on_noir_pressed() -> void:
	handle_pressed_buttons("black")
	
func _on_violet_pressed() -> void:
	handle_pressed_buttons("purple")


func _on_control_launch_search() -> void:
	GlobalVar.research_color = pressed
	
