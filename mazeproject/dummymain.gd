extends Node

@onready var CurrentWorld = get_tree().current_scene

func AddScene(dummy): # Loads a node from disk async
	await get_tree().create_timer(0.0).timeout # Use a 0 timer to simulate the async loading aspect of Main.AddScene(Obj , Location : Vector2, Name : String, Defered : bool)

func GetCharacter(dummy): # Gets the specific party member based on a int value
	if CurrentWorld.has_node("ObjPlayer"):
		return CurrentWorld.get_node("ObjPlayer")
	return null 
