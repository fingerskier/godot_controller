extends Control

onready var Button0 = $Button0
onready var Up = $Up
onready var LstickLeft = $LstickLeft
onready var LstickRight = $LstickRight
onready var LstickUp = $LstickUp
onready var LstickDown = $LstickDown
onready var RstickLeft = $RstickLeft
onready var RstickRight = $RstickRight
onready var RstickUp = $RstickUp
onready var RstickDown = $RstickDown
onready var Axis9L = $"Axis9-"
onready var Axis9R = $"Axis9+"

func _process(delta):
	if Input.is_action_just_pressed("Button 0"):
		Button0.add_color_override("font_color", Color(1,1,1))
	else:
		Button0.add_color_override("font_color", Color(0,0,0))

	if Input.is_action_just_pressed("ui_up"):
		print('up pressed')
		Up.text = 'UP'
		Up.add_color_override("font_color", Color(1,1,1))
	if Input.is_action_just_released("ui_up"):
		print('up released')
		Up.text = 'up'
		Up.add_color_override("font_color", Color(0,0,0))

	LstickLeft.value = Input.get_joy_axis(0, JOY_AXIS_0)
	LstickRight.value = Input.get_joy_axis(0, JOY_AXIS_1)
	LstickUp.value = Input.get_joy_axis(0, JOY_AXIS_2)
	LstickDown.value = Input.get_joy_axis(0, JOY_AXIS_3)

	RstickLeft.value = Input.get_joy_axis(0, JOY_AXIS_4)
	RstickRight.value = Input.get_joy_axis(0, JOY_AXIS_5)
	RstickUp.value = Input.get_joy_axis(0, JOY_AXIS_6)
	RstickDown.value = Input.get_joy_axis(0, JOY_AXIS_7)

	Axis9L.value = Input.get_joy_axis(0, JOY_AXIS_8)
	Axis9R.value = Input.get_joy_axis(0, JOY_AXIS_9)
