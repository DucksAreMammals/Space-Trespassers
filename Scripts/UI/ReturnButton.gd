extends Button

func _on_ReturnButton_pressed():
	$"/root/Persistent"._play_select_sound()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Levels/MainMenu.tscn")
