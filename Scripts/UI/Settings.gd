extends Control

onready var music_setting = $VBoxContainer/HBoxContainer/SettingsBox/MusicSettingBox/MusicSetting
onready var sfx_setting = $VBoxContainer/HBoxContainer/SettingsBox/SFXSettingBox/SFXSetting
onready var persistent = get_node("/root/Persistent")

func _ready():
	var settings = persistent.settings
	music_setting.pressed = settings["music"]
	music_setting.pressed = settings["music"]
	sfx_setting.pressed = settings["sfx"]

func _on_MenuButton_pressed():
	persistent._play_select_sound()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Levels/MainMenu.tscn")

func _on_setting_toggled(_button_pressed):
	var settings = {"music": music_setting.pressed, "sfx": sfx_setting.pressed}
	persistent._save_settings(settings)
	persistent._play_select_sound()

func _on_ResetProgressButton_pressed():
	persistent._play_select_sound()
	persistent._save_wave_number(1)
