/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C40605B
/// @DnDComment : the origanal, no game pad
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B3C98AA
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 54773BEF
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1D9D7E31
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l1D9D7E31_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l1D9D7E31_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5AA7D4BB
	/// @DnDParent : 1D9D7E31
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 00EDA340
	/// @DnDParent : 1D9D7E31
	var l00EDA340_0;l00EDA340_0 = keyboard_check_pressed(vk_space);if (l00EDA340_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F9DF9BF
		/// @DnDComment : jump :]
		/// @DnDDisabled : 1
		/// @DnDParent : 00EDA340
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0F3893FE
/// @DnDComment : if your not on the ground
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A672411
	/// @DnDComment : if were falling after jump
	/// @DnDDisabled : 1
	/// @DnDParent : 0F3893FE
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2506CBCA
	/// @DnDComment : add gravidy$(13_10)
	/// @DnDParent : 7A672411
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "move_y"
	move_y += 1;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6E167BAE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_death"
/// @DnDArgument : "destroylist" "false"
var l6E167BAE_0 = instance_place(x + 0, y + 0, [collision_death]);if ((l6E167BAE_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6962451B
	/// @DnDParent : 6E167BAE
	instance_destroy();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 619EDEDB
/// @DnDComment : 1st object is $(13_10)the object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);