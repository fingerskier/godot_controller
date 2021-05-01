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
onready var Axis9L = $Axis9Left
onready var Axis9R = $Axis9Right
onready var AxisLX = $AxisLX
onready var AxisLY = $AxisLY
onready var AxisRX = $AxisRX
onready var AxisRY = $AxisRY
onready var AxisL2 = $AxisL2
onready var AxisR2 = $AxisR2

func _process(delta):
	if Input.is_action_just_pressed("Button 0"):
		Button0.add_color_override("font_color", Color(1,1,1))
	else:
		Button0.add_color_override("font_color", Color(0,0,0))

	if Input.is_action_just_pressed("ui_up"):
		Up.text = 'UP'
		Up.add_color_override("font_color", Color(1,1,1))
	if Input.is_action_just_released("ui_up"):
		Up.text = 'up'
		Up.add_color_override("font_color", Color(0,0,0))

	# These work
	print(Input.get_action_strength("Lstick Down"))
	print(Input.get_action_strength("Rstick Down"))

	# These don't work anymore
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

	AxisLX.value = Input.get_joy_axis(0, JOY_ANALOG_LX)
	AxisLY.value = Input.get_joy_axis(0, JOY_ANALOG_LY)
	AxisRX.value = Input.get_joy_axis(0, JOY_ANALOG_RX)
	AxisRY.value = Input.get_joy_axis(0, JOY_ANALOG_RY)
	AxisL2.value = Input.get_joy_axis(0, JOY_ANALOG_L2)
	AxisR2.value = Input.get_joy_axis(0, JOY_ANALOG_R2)
