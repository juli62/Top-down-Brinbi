extends Control




var dialog = [
	'[wave amp=50 freq=2][shake rate=5 level=10][color=#FF0000]I[/color] [color=#EF000F]w[/color][color=#E70017]i[/color][color=#DF001F]l[/color][color=#D70027]l[/color] [color=#C70037]d[/color][color=#BF003F]e[/color][color=#B70047]s[/color][color=#AF004F]t[/color][color=#A70057]r[/color][color=#9F005F]o[/color][color=#970067]y[/color] [color=#870077]y[/color][color=#7F007F]o[/color][color=#770087]u[/color][color=#6F008F]r[/color] [color=#5F009F]v[/color][color=#5700A7]e[/color][color=#4F00AF]r[/color][color=#4700B7]y[/color] [color=#3700C7]s[/color][color=#2F00CF]o[/color][color=#2700D7]u[/color][color=#1F00DF]l[/color][color=#1700E7]![/color][color=#0F00EF]![/color][color=#0700F7]![/color][/shake][/wave]'

]

var dialog_index = 0 
var finished = false

func _ready():
	load_dialog()
	
func _physics_process(_delta):
	 $"Indic".visible = finished
	 if Input.is_action_just_pressed("ui_accept"):
		 load_dialog()
		 get_tree().change_scene("res://Fight/Fight.tscn")

func load_dialog():
	if dialog_index < dialog.size():
		finished = false
		
			
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible" , 0 , 1 , 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT 
			
		)
		
		$Tween.start()
		
	else:
		queue_free()
	dialog_index += 1

	

func _on_Tween_tween_completed(object, key):
	finished = true
	


func _on_Tween_tween_step(object, key, elapsed, value):
	$Voice1.play()


