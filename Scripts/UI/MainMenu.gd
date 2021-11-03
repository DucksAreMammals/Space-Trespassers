extends Control

onready var persistent = get_node("/root/Persistent")

func _ready():
	get_tree().paused = false

func _on_PlayButton_pressed():
	persistent._play_select_sound()
	persistent.current_wave_number = persistent.wave_number
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")

func _on_QuitButton_pressed():
	persistent._play_select_sound()
	get_tree().quit()

func _on_SettingsButton_pressed():
	persistent._play_select_sound()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Levels/Settings.tscn")


func _on_PlayButton2_pressed():
	persistent._play_select_sound()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Levels/LevelSelect.tscn")
