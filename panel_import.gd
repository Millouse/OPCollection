extends Control

@onready var card_name: LineEdit = $CardName
@onready var grid: HBoxContainer = %Grid

signal launch_search

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	pass # Replace with function body.


func _on_search_button_pressed() -> void:
	emit_signal("launch_search")
	print(GlobalVar.research_color, GlobalVar.research_cost, GlobalVar.research_name)
	var cards = GlobalVar.data
	if (GlobalVar.research_color == [] and GlobalVar.research_cost == [] and GlobalVar.research_name == ""):
		print("Je suis dans le cas ou ça affiche tout")
		for id in cards.keys():
			var textureRect = TextureRect.new()
			var image = Image.load_from_file("res://cards/" + id + ".png")
			var texture = ImageTexture.create_from_image(image)
			textureRect.set_texture(texture)
			get_node("%Grid").add_child(textureRect)

func _on_card_name_text_submitted(new_text: String) -> void:
	GlobalVar.research_name = new_text
	card_name.release_focus()
