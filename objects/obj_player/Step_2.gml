/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66E8C5F7
/// @DnDArgument : "var" "move_y"
if(move_y == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 555EAE47
	/// @DnDParent : 66E8C5F7
	/// @DnDArgument : "spriteind" "Sprite3"
	/// @DnDSaveInfo : "spriteind" "Sprite3"
	sprite_index = Sprite3;
	image_index = 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7388A0C8
/// @DnDArgument : "y" "2"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l7388A0C8_0 = instance_place(0, 2, [obj_floor]);if ((l7388A0C8_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C926F3F
	/// @DnDComment : if move left
	/// @DnDParent : 7388A0C8
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 64A09121
		/// @DnDParent : 3C926F3F
		/// @DnDArgument : "spriteind" "Sprite4"
		/// @DnDSaveInfo : "spriteind" "Sprite4"
		sprite_index = Sprite4;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 27C9614D
		/// @DnDParent : 3C926F3F
		/// @DnDArgument : "xscale" "_1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = _1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50D76F38
	/// @DnDParent : 7388A0C8
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 674C0238
		/// @DnDParent : 50D76F38
		/// @DnDArgument : "spriteind" "Sprite3"
		/// @DnDSaveInfo : "spriteind" "Sprite3"
		sprite_index = Sprite3;
		image_index = 0;}}