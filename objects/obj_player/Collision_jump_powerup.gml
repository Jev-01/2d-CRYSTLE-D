/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6704B6B1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "powerup"
powerup = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2F566D95
/// @DnDArgument : "steps" "30 * 60"
alarm_set(0, 30 * 60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0FF42564
/// @DnDArgument : "colour" "$FFFF00FF"
image_blend = $FFFF00FF & $ffffff;
image_alpha = ($FFFF00FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C197B31
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "value" "1"
if(powerup == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 298A7F89
	/// @DnDParent : 7C197B31
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0EDE30CD
	/// @DnDParent : 7C197B31
	var l0EDE30CD_0;l0EDE30CD_0 = keyboard_check_pressed(vk_space);if (l0EDE30CD_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69C03A9E
		/// @DnDParent : 0EDE30CD
		/// @DnDArgument : "expr" "-jump_speed * 5"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed * 5;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 13D0473B
		/// @DnDApplyTo : other
		/// @DnDParent : 0EDE30CD
		with(other) instance_destroy();}}