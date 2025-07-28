/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66E8C5F7
/// @DnDComment : if jump$(13_10)
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(move_y < 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 555EAE47
	/// @DnDParent : 66E8C5F7
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "GUBBY_evil"
	/// @DnDSaveInfo : "spriteind" "GUBBY_evil"
	sprite_index = GUBBY_evil;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50D76F38
/// @DnDComment : if falling$(13_10)
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 674C0238
	/// @DnDParent : 50D76F38
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "GUBBY_evil"
	/// @DnDSaveInfo : "spriteind" "GUBBY_evil"
	sprite_index = GUBBY_evil;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7388A0C8
/// @DnDComment : if we are on the grond
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l7388A0C8_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l7388A0C8_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C926F3F
	/// @DnDComment : if moving left
	/// @DnDParent : 7388A0C8
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 64A09121
		/// @DnDParent : 3C926F3F
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "GUBBY_evil"
		/// @DnDSaveInfo : "spriteind" "GUBBY_evil"
		sprite_index = GUBBY_evil;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 27C9614D
		/// @DnDComment : flip the image x scale
		/// @DnDParent : 3C926F3F
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CF47719
	/// @DnDComment : if moving right
	/// @DnDParent : 7388A0C8
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 74DC6520
		/// @DnDParent : 3CF47719
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "GUBBY_evil"
		/// @DnDSaveInfo : "spriteind" "GUBBY_evil"
		sprite_index = GUBBY_evil;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 6B8F2D48
		/// @DnDComment : reset the image x scale
		/// @DnDParent : 3CF47719
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09756DC3
	/// @DnDComment : if not moving
	/// @DnDParent : 7388A0C8
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 68554FBF
		/// @DnDParent : 09756DC3
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "GUBBY_evil"
		/// @DnDSaveInfo : "spriteind" "GUBBY_evil"
		sprite_index = GUBBY_evil;
		image_index += 0;}}