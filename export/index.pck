GDPC                                                                                          X   res://.godot/exported/133200997/export-053c088fcfd156ea19f3d1ba53835dc9-character.scn   p      n      RҩfV)W~<]�[LH��    T   res://.godot/exported/133200997/export-92e21f5eb8f34d30931363b28ed9e055-stage.scn   �,      ��      �k���w7�BK�L    ,   res://.godot/global_script_class_cache.cfg  P�            ��Р�8���8~$}P�    L   res://.godot/imported/character.png-7a996d3b758d22c506b76a7c15391284.ctex   �	      �      ?��_�W`ya���    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́     T   res://.godot/imported/tilesheet_complete.png-5f93f3c22ca1735fc3b12890d7b0f5cb.ctex  �      ��     �v��rs����+�C���       res://.godot/uid_cache.bin  0�     �       ��%�m��w�UE��       res://HUD.gd�)      3      �R��%����X��s�B       res://character.gd          �	      Tt��j
l��M#��m       res://character.png.import  �      �       ���/¨֦
�6X�       res://character.tscn.remap  p�     f       U;�u*��6\��f�(.       res://character_tj.gd   �      	      qO�Z��	ď�O-fxR       res://icon.svg  p�     �      C��=U���^Qu��U3       res://icon.svg.import   �(      �       Q�9ǞCJ<��K�!       res://project.binary��           ����)�C��߿і��       res://stage.gd  �*      �      ͢�������ѹ�6       res://stage.tscn.remap  ��     b       o�2+�gD�&'�E    $   res://tilesheet_complete.png.import ��     �       {0�sZ��L�G�/(    B�?�tӄ�"��extends CharacterBody2D

@export var is_active = true
@export var is_right = true
@export var speed = 2000
@export var jump_force = -2000

const GRAVITY = 3000



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	var velocity = Vector2.ZERO # The player's movement vector.
#	if Input.is_action_pressed("move_right"):
#		velocity.x += 1
#	if Input.is_action_pressed("move_left"):
#		velocity.x -= 1
#	if Input.is_action_pressed("move_down"):
#		velocity.y += 1
#	if Input.is_action_pressed("move_up"):
#		velocity.y -= 1
##
##	if velocity.length() > 0:
##		velocity = velocity.normalized() * speed
##		$AnimatedSprite2D.play()
##	else:
##		$AnimatedSprite2D.stop()
#
#	if velocity.length() > 0:
#		motion_ve = velocity.normalized() * speed
#
#	move_and_slide()		
##
##	position += velocity * delta * 100
##	print(position)
#
func get_input(delta):
	var input_velocity = Vector2.ZERO # The player's movement vector.
	
	if Input.is_action_pressed("move_right"):
		input_velocity.x += speed * delta
	elif Input.is_action_pressed("move_left"):
		input_velocity.x -= speed * delta
	else:
		input_velocity.x = 0

	
	if Input.is_action_pressed("move_up") and is_on_floor():
		input_velocity.y = -jump_force
						
	input_velocity.y += GRAVITY * delta
	
	velocity = input_velocity
	print(velocity)

	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.stop()

	
func _physics_process(delta):
	
	if is_right:
		velocity.x += speed * delta
	else:
		velocity.x -= speed * delta
		

	
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump_force
		is_right = !is_right
						
	
	if is_active:
		move_and_slide()
	
	velocity.x = lerp(velocity.x, 0.0, 0.2)
	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.stop()
	
	if self.position.y > 2000:
		self.position.x = 0
		self.position.y = 0
	
	
#	get_input(delta)
#	move_and_slide()
	
#	for i in get_slide_collision_count():
#		var collision = get_slide_collision(i)
#		print("I collided with ", collision.get_collider().name)
#
	


��Ҽ1GST2   @          ����               @          �  RIFF�  WEBPVP8L�  /?�������V�jXN)��/l(d$I*�X�����M$�Y�
'��!vSG@P��h���Z8�A�n��8�b�����V�F����Hv�����@D�!���Hr.�],}�����n	ӈ� �Z�-+�!se�Ҙ�AZ���0�JZ�¾m�%H�l섅묍�$�0�'�V!�2G>,ü�i��VX|������|>�q/Y[`m�aF�ǜ���s���r�a%2��%�n��m`��@����~��3g�aPi�M���л�b��Pp]f�0� ���2�ȥYQ����[��6uQBp�������|�Te 7`n�;a��G'U�u9������NٰQw���24�2�ZMљT|r)B�N\���tFzL9�݉_�y�(^]=kBx�$��w+�@�� �>[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cy420xlsylhmw"
path="res://.godot/imported/character.png-7a996d3b758d22c506b76a7c15391284.ctex"
metadata={
"vram_texture": false
}
 Zqƞ�6�?RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script    atlas    region    margin    filter_clip    animations 	   _bundled       Script    res://character.gd ��������
   Texture2D    res://character.png "3q�y�wZ      local://RectangleShape2D_82m0a 7         local://AtlasTexture_u3sti h         local://AtlasTexture_s5x2g �         local://SpriteFrames_68w0n �         local://PackedScene_yj5l4 �         RectangleShape2D       
     �A  HB         AtlasTexture                                 B   B         AtlasTexture                         B       B   B         SpriteFrames    	                     name ,      walk       speed      �@      loop             frames                   texture             	   duration      �?            texture             	   duration      �?         PackedScene    
      	         names "   
      Player    script    CharacterBody2D    CollisionShape2D 	   position    shape    AnimatedSprite2D    scale    sprite_frames 
   animation    	   variants                 
     ��   �          
      @   @         ,      walk       node_count             nodes     !   ��������       ����                            ����                                 ����               	                conn_count              conns               node_paths              editable_instances              version             RSRC�jextends CharacterBody2D

@export var speed = 180
@export var jump_force = -900

const GRAVITY = 30


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	var velocity = Vector2.ZERO # The player's movement vector.
#	if Input.is_action_pressed("move_right"):
#		velocity.x += 1
#	if Input.is_action_pressed("move_left"):
#		velocity.x -= 1
#	if Input.is_action_pressed("move_down"):
#		velocity.y += 1
#	if Input.is_action_pressed("move_up"):
#		velocity.y -= 1
##
##	if velocity.length() > 0:
##		velocity = velocity.normalized() * speed
##		$AnimatedSprite2D.play()
##	else:
##		$AnimatedSprite2D.stop()
#
#	if velocity.length() > 0:
#		motion_ve = velocity.normalized() * speed
#
#	move_and_slide()		
##
##	position += velocity * delta * 100
##	print(position)
#
func get_input(delta):
	var input_velocity = Vector2.ZERO # The player's movement vector.
	
	if Input.is_action_pressed("move_right"):
		input_velocity.x += speed * delta
	elif Input.is_action_pressed("move_left"):
		input_velocity.x -= speed * delta
	else:
		input_velocity.x = 0

	
	if Input.is_action_pressed("move_up") and is_on_floor():
		input_velocity.y = -jump_force
						
	input_velocity.y += GRAVITY * delta
	
	velocity = input_velocity
	print(velocity)

	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.stop()

	
func _physics_process(delta):
	
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	elif Input.is_action_pressed("move_left"):
		velocity.x -= speed
		
	velocity.y += GRAVITY 
	if Input.is_action_pressed("move_up") and is_on_floor():
		velocity.y = jump_force
						
	
	move_and_slide()
	
	velocity.x = lerp(velocity.x, 0.0, 0.2)
	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = false
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.stop()
	
	
	
#	get_input(delta)
#	move_and_slide()
	
#	for i in get_slide_collision_count():
#		var collision = get_slide_collision(i)
#		print("I collided with ", collision.get_collider().name)
#
	

_��GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �o����@���ua[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bgcw4sq2gvvqh"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 ��k}=i��m����extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func show_game_over():
	$Message.text = "Congratulations!!"
	
��vg��Ga'\�.extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_entered(body):
#	print(body.name)
	if body.name == "Character":
		$HUD/Message.text = "congratulations!"
		$Character.is_active = false

�>��3� ����~RSRC                    PackedScene            ��������                                            ;     resource_local_to_scene    resource_name    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    script    texture    margins    separation    texture_region_size    use_texture_padding    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity    0:0/0/script    1:0/0 &   1:0/0/physics_layer_0/linear_velocity '   1:0/0/physics_layer_0/angular_velocity    1:0/0/script    2:0/0 &   2:0/0/physics_layer_0/linear_velocity '   2:0/0/physics_layer_0/angular_velocity    2:0/0/script    3:0/0 &   3:0/0/physics_layer_0/linear_velocity '   3:0/0/physics_layer_0/angular_velocity    3:0/0/script    4:0/0 &   4:0/0/physics_layer_0/linear_velocity '   4:0/0/physics_layer_0/angular_velocity    4:0/0/script    5:0/0 &   5:0/0/physics_layer_0/linear_velocity '   5:0/0/physics_layer_0/angular_velocity    5:0/0/script    6:0/0 &   6:0/0/physics_layer_0/linear_velocity '   6:0/0/physics_layer_0/angular_velocity    6:0/0/script    7:0/0 &   7:0/0/physics_layer_0/linear_velocity '   7:0/0/physics_layer_0/angular_velocity    7:0/0/script    8:0/0 &   8:0/0/physics_layer_0/linear_velocity '   8:0/0/physics_layer_0/angular_velocity    8:0/0/script    9:0/0 &   9:0/0/physics_layer_0/linear_velocity '   9:0/0/physics_layer_0/angular_velocity    9:0/0/script    10:0/0 '   10:0/0/physics_layer_0/linear_velocity (   10:0/0/physics_layer_0/angular_velocity    10:0/0/script    11:0/0 '   11:0/0/physics_layer_0/linear_velocity (   11:0/0/physics_layer_0/angular_velocity    11:0/0/script    12:0/0 '   12:0/0/physics_layer_0/linear_velocity (   12:0/0/physics_layer_0/angular_velocity    12:0/0/script    13:0/0 '   13:0/0/physics_layer_0/linear_velocity (   13:0/0/physics_layer_0/angular_velocity    13:0/0/script    14:0/0 '   14:0/0/physics_layer_0/linear_velocity (   14:0/0/physics_layer_0/angular_velocity    14:0/0/script    15:0/0 '   15:0/0/physics_layer_0/linear_velocity (   15:0/0/physics_layer_0/angular_velocity    15:0/0/script    16:0/0 '   16:0/0/physics_layer_0/linear_velocity (   16:0/0/physics_layer_0/angular_velocity    16:0/0/script    17:0/0 '   17:0/0/physics_layer_0/linear_velocity (   17:0/0/physics_layer_0/angular_velocity    17:0/0/script    18:0/0 '   18:0/0/physics_layer_0/linear_velocity (   18:0/0/physics_layer_0/angular_velocity    18:0/0/script    19:0/0 '   19:0/0/physics_layer_0/linear_velocity (   19:0/0/physics_layer_0/angular_velocity    19:0/0/script    20:0/0 '   20:0/0/physics_layer_0/linear_velocity (   20:0/0/physics_layer_0/angular_velocity    20:0/0/script    21:0/0 '   21:0/0/physics_layer_0/linear_velocity (   21:0/0/physics_layer_0/angular_velocity    21:0/0/script    0:1/0 &   0:1/0/physics_layer_0/linear_velocity '   0:1/0/physics_layer_0/angular_velocity    0:1/0/script    1:1/0 &   1:1/0/physics_layer_0/linear_velocity '   1:1/0/physics_layer_0/angular_velocity    1:1/0/script    2:1/0 &   2:1/0/physics_layer_0/linear_velocity '   2:1/0/physics_layer_0/angular_velocity    2:1/0/script    3:1/0 &   3:1/0/physics_layer_0/linear_velocity '   3:1/0/physics_layer_0/angular_velocity    3:1/0/script    4:1/0 &   4:1/0/physics_layer_0/linear_velocity '   4:1/0/physics_layer_0/angular_velocity    4:1/0/script    5:1/0 &   5:1/0/physics_layer_0/linear_velocity '   5:1/0/physics_layer_0/angular_velocity    5:1/0/script    6:1/0 &   6:1/0/physics_layer_0/linear_velocity '   6:1/0/physics_layer_0/angular_velocity    6:1/0/script    7:1/0 &   7:1/0/physics_layer_0/linear_velocity '   7:1/0/physics_layer_0/angular_velocity    7:1/0/script    8:1/0 &   8:1/0/physics_layer_0/linear_velocity '   8:1/0/physics_layer_0/angular_velocity    8:1/0/script    9:1/0 &   9:1/0/physics_layer_0/linear_velocity '   9:1/0/physics_layer_0/angular_velocity    9:1/0/script    10:1/0 '   10:1/0/physics_layer_0/linear_velocity (   10:1/0/physics_layer_0/angular_velocity    10:1/0/script    11:1/0 '   11:1/0/physics_layer_0/linear_velocity (   11:1/0/physics_layer_0/angular_velocity    11:1/0/script    12:1/0 '   12:1/0/physics_layer_0/linear_velocity (   12:1/0/physics_layer_0/angular_velocity    12:1/0/script    13:1/0 '   13:1/0/physics_layer_0/linear_velocity (   13:1/0/physics_layer_0/angular_velocity    13:1/0/script    14:1/0 '   14:1/0/physics_layer_0/linear_velocity (   14:1/0/physics_layer_0/angular_velocity    14:1/0/script    15:1/0 '   15:1/0/physics_layer_0/linear_velocity (   15:1/0/physics_layer_0/angular_velocity    15:1/0/script    16:1/0 '   16:1/0/physics_layer_0/linear_velocity (   16:1/0/physics_layer_0/angular_velocity    16:1/0/script    17:1/0 '   17:1/0/physics_layer_0/linear_velocity (   17:1/0/physics_layer_0/angular_velocity    17:1/0/script    18:1/0 '   18:1/0/physics_layer_0/linear_velocity (   18:1/0/physics_layer_0/angular_velocity    18:1/0/script    19:1/0 '   19:1/0/physics_layer_0/linear_velocity (   19:1/0/physics_layer_0/angular_velocity    19:1/0/script    20:1/0 '   20:1/0/physics_layer_0/linear_velocity (   20:1/0/physics_layer_0/angular_velocity    20:1/0/script    21:1/0 '   21:1/0/physics_layer_0/linear_velocity (   21:1/0/physics_layer_0/angular_velocity    21:1/0/script    0:2/0 &   0:2/0/physics_layer_0/linear_velocity '   0:2/0/physics_layer_0/angular_velocity    0:2/0/script    1:2/0 &   1:2/0/physics_layer_0/linear_velocity '   1:2/0/physics_layer_0/angular_velocity    1:2/0/script    2:2/0 &   2:2/0/physics_layer_0/linear_velocity '   2:2/0/physics_layer_0/angular_velocity    2:2/0/script    3:2/0 &   3:2/0/physics_layer_0/linear_velocity '   3:2/0/physics_layer_0/angular_velocity    3:2/0/script    4:2/0 &   4:2/0/physics_layer_0/linear_velocity '   4:2/0/physics_layer_0/angular_velocity    4:2/0/script    5:2/0 &   5:2/0/physics_layer_0/linear_velocity '   5:2/0/physics_layer_0/angular_velocity    5:2/0/script    6:2/0 &   6:2/0/physics_layer_0/linear_velocity '   6:2/0/physics_layer_0/angular_velocity    6:2/0/script    7:2/0 &   7:2/0/physics_layer_0/linear_velocity '   7:2/0/physics_layer_0/angular_velocity    7:2/0/script    8:2/0 &   8:2/0/physics_layer_0/linear_velocity '   8:2/0/physics_layer_0/angular_velocity    8:2/0/script    9:2/0 &   9:2/0/physics_layer_0/linear_velocity '   9:2/0/physics_layer_0/angular_velocity    9:2/0/script    10:2/0 '   10:2/0/physics_layer_0/linear_velocity (   10:2/0/physics_layer_0/angular_velocity    10:2/0/script    11:2/0 '   11:2/0/physics_layer_0/linear_velocity (   11:2/0/physics_layer_0/angular_velocity    11:2/0/script    12:2/0 '   12:2/0/physics_layer_0/linear_velocity (   12:2/0/physics_layer_0/angular_velocity    12:2/0/script    13:2/0 '   13:2/0/physics_layer_0/linear_velocity (   13:2/0/physics_layer_0/angular_velocity    13:2/0/script    14:2/0 '   14:2/0/physics_layer_0/linear_velocity (   14:2/0/physics_layer_0/angular_velocity    14:2/0/script    15:2/0 '   15:2/0/physics_layer_0/linear_velocity (   15:2/0/physics_layer_0/angular_velocity    15:2/0/script    16:2/0 '   16:2/0/physics_layer_0/linear_velocity (   16:2/0/physics_layer_0/angular_velocity    16:2/0/script    17:2/0 '   17:2/0/physics_layer_0/linear_velocity (   17:2/0/physics_layer_0/angular_velocity    17:2/0/script    18:2/0 '   18:2/0/physics_layer_0/linear_velocity (   18:2/0/physics_layer_0/angular_velocity    18:2/0/script    19:2/0 '   19:2/0/physics_layer_0/linear_velocity (   19:2/0/physics_layer_0/angular_velocity    19:2/0/script    20:2/0 '   20:2/0/physics_layer_0/linear_velocity (   20:2/0/physics_layer_0/angular_velocity    20:2/0/script    21:2/0 '   21:2/0/physics_layer_0/linear_velocity (   21:2/0/physics_layer_0/angular_velocity    21:2/0/script    0:3/0 &   0:3/0/physics_layer_0/linear_velocity '   0:3/0/physics_layer_0/angular_velocity    0:3/0/script    1:3/0 &   1:3/0/physics_layer_0/linear_velocity '   1:3/0/physics_layer_0/angular_velocity    1:3/0/script    2:3/0 &   2:3/0/physics_layer_0/linear_velocity '   2:3/0/physics_layer_0/angular_velocity '   2:3/0/physics_layer_0/polygon_0/points    2:3/0/script    3:3/0 &   3:3/0/physics_layer_0/linear_velocity '   3:3/0/physics_layer_0/angular_velocity    3:3/0/script    4:3/0 &   4:3/0/physics_layer_0/linear_velocity '   4:3/0/physics_layer_0/angular_velocity    4:3/0/script    5:3/0 &   5:3/0/physics_layer_0/linear_velocity '   5:3/0/physics_layer_0/angular_velocity    5:3/0/script    6:3/0 &   6:3/0/physics_layer_0/linear_velocity '   6:3/0/physics_layer_0/angular_velocity    6:3/0/script    7:3/0 &   7:3/0/physics_layer_0/linear_velocity '   7:3/0/physics_layer_0/angular_velocity    7:3/0/script    8:3/0 &   8:3/0/physics_layer_0/linear_velocity '   8:3/0/physics_layer_0/angular_velocity    8:3/0/script    9:3/0 &   9:3/0/physics_layer_0/linear_velocity '   9:3/0/physics_layer_0/angular_velocity    9:3/0/script    10:3/0 '   10:3/0/physics_layer_0/linear_velocity (   10:3/0/physics_layer_0/angular_velocity    10:3/0/script    11:3/0 '   11:3/0/physics_layer_0/linear_velocity (   11:3/0/physics_layer_0/angular_velocity    11:3/0/script    12:3/0 '   12:3/0/physics_layer_0/linear_velocity (   12:3/0/physics_layer_0/angular_velocity    12:3/0/script    13:3/0 '   13:3/0/physics_layer_0/linear_velocity (   13:3/0/physics_layer_0/angular_velocity    13:3/0/script    14:3/0 '   14:3/0/physics_layer_0/linear_velocity (   14:3/0/physics_layer_0/angular_velocity    14:3/0/script    15:3/0 '   15:3/0/physics_layer_0/linear_velocity (   15:3/0/physics_layer_0/angular_velocity    15:3/0/script    16:3/0 '   16:3/0/physics_layer_0/linear_velocity (   16:3/0/physics_layer_0/angular_velocity    16:3/0/script    17:3/0 '   17:3/0/physics_layer_0/linear_velocity (   17:3/0/physics_layer_0/angular_velocity    17:3/0/script    18:3/0 '   18:3/0/physics_layer_0/linear_velocity (   18:3/0/physics_layer_0/angular_velocity    18:3/0/script    19:3/0 '   19:3/0/physics_layer_0/linear_velocity (   19:3/0/physics_layer_0/angular_velocity    19:3/0/script    20:3/0 '   20:3/0/physics_layer_0/linear_velocity (   20:3/0/physics_layer_0/angular_velocity    20:3/0/script    21:3/0 '   21:3/0/physics_layer_0/linear_velocity (   21:3/0/physics_layer_0/angular_velocity    21:3/0/script    0:4/0 &   0:4/0/physics_layer_0/linear_velocity '   0:4/0/physics_layer_0/angular_velocity    0:4/0/script    1:4/0 &   1:4/0/physics_layer_0/linear_velocity '   1:4/0/physics_layer_0/angular_velocity    1:4/0/script    2:4/0 &   2:4/0/physics_layer_0/linear_velocity '   2:4/0/physics_layer_0/angular_velocity    2:4/0/script    3:4/0 &   3:4/0/physics_layer_0/linear_velocity '   3:4/0/physics_layer_0/angular_velocity    3:4/0/script    4:4/0 &   4:4/0/physics_layer_0/linear_velocity '   4:4/0/physics_layer_0/angular_velocity    4:4/0/script    5:4/0 &   5:4/0/physics_layer_0/linear_velocity '   5:4/0/physics_layer_0/angular_velocity    5:4/0/script    6:4/0 &   6:4/0/physics_layer_0/linear_velocity '   6:4/0/physics_layer_0/angular_velocity    6:4/0/script    7:4/0 &   7:4/0/physics_layer_0/linear_velocity '   7:4/0/physics_layer_0/angular_velocity    7:4/0/script    8:4/0 &   8:4/0/physics_layer_0/linear_velocity '   8:4/0/physics_layer_0/angular_velocity    8:4/0/script    9:4/0 &   9:4/0/physics_layer_0/linear_velocity '   9:4/0/physics_layer_0/angular_velocity    9:4/0/script    10:4/0 '   10:4/0/physics_layer_0/linear_velocity (   10:4/0/physics_layer_0/angular_velocity    10:4/0/script    11:4/0 '   11:4/0/physics_layer_0/linear_velocity (   11:4/0/physics_layer_0/angular_velocity    11:4/0/script    12:4/0 '   12:4/0/physics_layer_0/linear_velocity (   12:4/0/physics_layer_0/angular_velocity    12:4/0/script    13:4/0 '   13:4/0/physics_layer_0/linear_velocity (   13:4/0/physics_layer_0/angular_velocity    13:4/0/script    14:4/0 '   14:4/0/physics_layer_0/linear_velocity (   14:4/0/physics_layer_0/angular_velocity    14:4/0/script    15:4/0 '   15:4/0/physics_layer_0/linear_velocity (   15:4/0/physics_layer_0/angular_velocity    15:4/0/script    16:4/0 '   16:4/0/physics_layer_0/linear_velocity (   16:4/0/physics_layer_0/angular_velocity    16:4/0/script    17:4/0 '   17:4/0/physics_layer_0/linear_velocity (   17:4/0/physics_layer_0/angular_velocity    17:4/0/script    18:4/0 '   18:4/0/physics_layer_0/linear_velocity (   18:4/0/physics_layer_0/angular_velocity    18:4/0/script    19:4/0 '   19:4/0/physics_layer_0/linear_velocity (   19:4/0/physics_layer_0/angular_velocity    19:4/0/script    21:4/0 '   21:4/0/physics_layer_0/linear_velocity (   21:4/0/physics_layer_0/angular_velocity    21:4/0/script    0:5/0 &   0:5/0/physics_layer_0/linear_velocity '   0:5/0/physics_layer_0/angular_velocity    0:5/0/script    1:5/0 &   1:5/0/physics_layer_0/linear_velocity '   1:5/0/physics_layer_0/angular_velocity    1:5/0/script    2:5/0 &   2:5/0/physics_layer_0/linear_velocity '   2:5/0/physics_layer_0/angular_velocity    2:5/0/script    3:5/0 &   3:5/0/physics_layer_0/linear_velocity '   3:5/0/physics_layer_0/angular_velocity    3:5/0/script    4:5/0 &   4:5/0/physics_layer_0/linear_velocity '   4:5/0/physics_layer_0/angular_velocity    4:5/0/script    5:5/0 &   5:5/0/physics_layer_0/linear_velocity '   5:5/0/physics_layer_0/angular_velocity    5:5/0/script    6:5/0 &   6:5/0/physics_layer_0/linear_velocity '   6:5/0/physics_layer_0/angular_velocity    6:5/0/script    7:5/0 &   7:5/0/physics_layer_0/linear_velocity '   7:5/0/physics_layer_0/angular_velocity    7:5/0/script    8:5/0 &   8:5/0/physics_layer_0/linear_velocity '   8:5/0/physics_layer_0/angular_velocity    8:5/0/script    9:5/0 &   9:5/0/physics_layer_0/linear_velocity '   9:5/0/physics_layer_0/angular_velocity    9:5/0/script    10:5/0 '   10:5/0/physics_layer_0/linear_velocity (   10:5/0/physics_layer_0/angular_velocity    10:5/0/script    11:5/0 '   11:5/0/physics_layer_0/linear_velocity (   11:5/0/physics_layer_0/angular_velocity    11:5/0/script    12:5/0 '   12:5/0/physics_layer_0/linear_velocity (   12:5/0/physics_layer_0/angular_velocity    12:5/0/script    13:5/0 '   13:5/0/physics_layer_0/linear_velocity (   13:5/0/physics_layer_0/angular_velocity    13:5/0/script    14:5/0 '   14:5/0/physics_layer_0/linear_velocity (   14:5/0/physics_layer_0/angular_velocity    14:5/0/script    15:5/0 '   15:5/0/physics_layer_0/linear_velocity (   15:5/0/physics_layer_0/angular_velocity    15:5/0/script    16:5/0 '   16:5/0/physics_layer_0/linear_velocity (   16:5/0/physics_layer_0/angular_velocity    16:5/0/script    17:5/0 '   17:5/0/physics_layer_0/linear_velocity (   17:5/0/physics_layer_0/angular_velocity    17:5/0/script    18:5/0 '   18:5/0/physics_layer_0/linear_velocity (   18:5/0/physics_layer_0/angular_velocity    18:5/0/script    19:5/0 '   19:5/0/physics_layer_0/linear_velocity (   19:5/0/physics_layer_0/angular_velocity    19:5/0/script    20:5/0 '   20:5/0/physics_layer_0/linear_velocity (   20:5/0/physics_layer_0/angular_velocity    20:5/0/script    21:5/0 '   21:5/0/physics_layer_0/linear_velocity (   21:5/0/physics_layer_0/angular_velocity    21:5/0/script    0:6/0 &   0:6/0/physics_layer_0/linear_velocity '   0:6/0/physics_layer_0/angular_velocity    0:6/0/script    1:6/0 &   1:6/0/physics_layer_0/linear_velocity '   1:6/0/physics_layer_0/angular_velocity    1:6/0/script    2:6/0 &   2:6/0/physics_layer_0/linear_velocity '   2:6/0/physics_layer_0/angular_velocity    2:6/0/script    3:6/0 &   3:6/0/physics_layer_0/linear_velocity '   3:6/0/physics_layer_0/angular_velocity    3:6/0/script    4:6/0 &   4:6/0/physics_layer_0/linear_velocity '   4:6/0/physics_layer_0/angular_velocity    4:6/0/script    5:6/0 &   5:6/0/physics_layer_0/linear_velocity '   5:6/0/physics_layer_0/angular_velocity    5:6/0/script    6:6/0 &   6:6/0/physics_layer_0/linear_velocity '   6:6/0/physics_layer_0/angular_velocity    6:6/0/script    7:6/0 &   7:6/0/physics_layer_0/linear_velocity '   7:6/0/physics_layer_0/angular_velocity    7:6/0/script    8:6/0 &   8:6/0/physics_layer_0/linear_velocity '   8:6/0/physics_layer_0/angular_velocity    8:6/0/script    9:6/0 &   9:6/0/physics_layer_0/linear_velocity '   9:6/0/physics_layer_0/angular_velocity    9:6/0/script    10:6/0 '   10:6/0/physics_layer_0/linear_velocity (   10:6/0/physics_layer_0/angular_velocity    10:6/0/script    11:6/0 '   11:6/0/physics_layer_0/linear_velocity (   11:6/0/physics_layer_0/angular_velocity    11:6/0/script    12:6/0 '   12:6/0/physics_layer_0/linear_velocity (   12:6/0/physics_layer_0/angular_velocity    12:6/0/script    13:6/0 '   13:6/0/physics_layer_0/linear_velocity (   13:6/0/physics_layer_0/angular_velocity    13:6/0/script    14:6/0 '   14:6/0/physics_layer_0/linear_velocity (   14:6/0/physics_layer_0/angular_velocity    14:6/0/script    15:6/0 '   15:6/0/physics_layer_0/linear_velocity (   15:6/0/physics_layer_0/angular_velocity    15:6/0/script    16:6/0 '   16:6/0/physics_layer_0/linear_velocity (   16:6/0/physics_layer_0/angular_velocity    16:6/0/script    17:6/0 '   17:6/0/physics_layer_0/linear_velocity (   17:6/0/physics_layer_0/angular_velocity    17:6/0/script    18:6/0 '   18:6/0/physics_layer_0/linear_velocity (   18:6/0/physics_layer_0/angular_velocity    18:6/0/script    19:6/0 '   19:6/0/physics_layer_0/linear_velocity (   19:6/0/physics_layer_0/angular_velocity    19:6/0/script    20:6/0 '   20:6/0/physics_layer_0/linear_velocity (   20:6/0/physics_layer_0/angular_velocity    20:6/0/script    21:6/0 '   21:6/0/physics_layer_0/linear_velocity (   21:6/0/physics_layer_0/angular_velocity    21:6/0/script    0:7/0 &   0:7/0/physics_layer_0/linear_velocity '   0:7/0/physics_layer_0/angular_velocity    0:7/0/script    1:7/0 &   1:7/0/physics_layer_0/linear_velocity '   1:7/0/physics_layer_0/angular_velocity    1:7/0/script    2:7/0 &   2:7/0/physics_layer_0/linear_velocity '   2:7/0/physics_layer_0/angular_velocity    2:7/0/script    3:7/0 &   3:7/0/physics_layer_0/linear_velocity '   3:7/0/physics_layer_0/angular_velocity    3:7/0/script    4:7/0 &   4:7/0/physics_layer_0/linear_velocity '   4:7/0/physics_layer_0/angular_velocity    4:7/0/script    5:7/0 &   5:7/0/physics_layer_0/linear_velocity '   5:7/0/physics_layer_0/angular_velocity    5:7/0/script    6:7/0 &   6:7/0/physics_layer_0/linear_velocity '   6:7/0/physics_layer_0/angular_velocity    6:7/0/script    7:7/0 &   7:7/0/physics_layer_0/linear_velocity '   7:7/0/physics_layer_0/angular_velocity    7:7/0/script    8:7/0 &   8:7/0/physics_layer_0/linear_velocity '   8:7/0/physics_layer_0/angular_velocity    8:7/0/script    9:7/0 &   9:7/0/physics_layer_0/linear_velocity '   9:7/0/physics_layer_0/angular_velocity    9:7/0/script    10:7/0 '   10:7/0/physics_layer_0/linear_velocity (   10:7/0/physics_layer_0/angular_velocity    10:7/0/script    11:7/0 '   11:7/0/physics_layer_0/linear_velocity (   11:7/0/physics_layer_0/angular_velocity    11:7/0/script    12:7/0 '   12:7/0/physics_layer_0/linear_velocity (   12:7/0/physics_layer_0/angular_velocity    12:7/0/script    13:7/0 '   13:7/0/physics_layer_0/linear_velocity (   13:7/0/physics_layer_0/angular_velocity    13:7/0/script    14:7/0 '   14:7/0/physics_layer_0/linear_velocity (   14:7/0/physics_layer_0/angular_velocity    14:7/0/script    15:7/0 '   15:7/0/physics_layer_0/linear_velocity (   15:7/0/physics_layer_0/angular_velocity    15:7/0/script    16:7/0 '   16:7/0/physics_layer_0/linear_velocity (   16:7/0/physics_layer_0/angular_velocity    16:7/0/script    17:7/0 '   17:7/0/physics_layer_0/linear_velocity (   17:7/0/physics_layer_0/angular_velocity    17:7/0/script    18:7/0 '   18:7/0/physics_layer_0/linear_velocity (   18:7/0/physics_layer_0/angular_velocity    18:7/0/script    19:7/0 '   19:7/0/physics_layer_0/linear_velocity (   19:7/0/physics_layer_0/angular_velocity    19:7/0/script    20:7/0 '   20:7/0/physics_layer_0/linear_velocity (   20:7/0/physics_layer_0/angular_velocity    20:7/0/script    21:7/0 '   21:7/0/physics_layer_0/linear_velocity (   21:7/0/physics_layer_0/angular_velocity    21:7/0/script    0:8/0 &   0:8/0/physics_layer_0/linear_velocity '   0:8/0/physics_layer_0/angular_velocity    0:8/0/script    1:8/0 &   1:8/0/physics_layer_0/linear_velocity '   1:8/0/physics_layer_0/angular_velocity    1:8/0/script    2:8/0 &   2:8/0/physics_layer_0/linear_velocity '   2:8/0/physics_layer_0/angular_velocity    2:8/0/script    3:8/0 &   3:8/0/physics_layer_0/linear_velocity '   3:8/0/physics_layer_0/angular_velocity    3:8/0/script    4:8/0 &   4:8/0/physics_layer_0/linear_velocity '   4:8/0/physics_layer_0/angular_velocity    4:8/0/script    5:8/0 &   5:8/0/physics_layer_0/linear_velocity '   5:8/0/physics_layer_0/angular_velocity    5:8/0/script    6:8/0 &   6:8/0/physics_layer_0/linear_velocity '   6:8/0/physics_layer_0/angular_velocity    6:8/0/script    7:8/0 &   7:8/0/physics_layer_0/linear_velocity '   7:8/0/physics_layer_0/angular_velocity    7:8/0/script    8:8/0 &   8:8/0/physics_layer_0/linear_velocity '   8:8/0/physics_layer_0/angular_velocity    8:8/0/script    9:8/0 &   9:8/0/physics_layer_0/linear_velocity '   9:8/0/physics_layer_0/angular_velocity    9:8/0/script    10:8/0 '   10:8/0/physics_layer_0/linear_velocity (   10:8/0/physics_layer_0/angular_velocity    10:8/0/script    11:8/0 '   11:8/0/physics_layer_0/linear_velocity (   11:8/0/physics_layer_0/angular_velocity    11:8/0/script    12:8/0 '   12:8/0/physics_layer_0/linear_velocity (   12:8/0/physics_layer_0/angular_velocity    12:8/0/script    13:8/0 '   13:8/0/physics_layer_0/linear_velocity (   13:8/0/physics_layer_0/angular_velocity    13:8/0/script    14:8/0 '   14:8/0/physics_layer_0/linear_velocity (   14:8/0/physics_layer_0/angular_velocity    14:8/0/script    15:8/0 '   15:8/0/physics_layer_0/linear_velocity (   15:8/0/physics_layer_0/angular_velocity    15:8/0/script    16:8/0 '   16:8/0/physics_layer_0/linear_velocity (   16:8/0/physics_layer_0/angular_velocity    16:8/0/script    17:8/0 '   17:8/0/physics_layer_0/linear_velocity (   17:8/0/physics_layer_0/angular_velocity    17:8/0/script    18:8/0 '   18:8/0/physics_layer_0/linear_velocity (   18:8/0/physics_layer_0/angular_velocity    18:8/0/script    19:8/0 '   19:8/0/physics_layer_0/linear_velocity (   19:8/0/physics_layer_0/angular_velocity    19:8/0/script    20:8/0 '   20:8/0/physics_layer_0/linear_velocity (   20:8/0/physics_layer_0/angular_velocity    20:8/0/script    21:8/0 '   21:8/0/physics_layer_0/linear_velocity (   21:8/0/physics_layer_0/angular_velocity    21:8/0/script    0:9/0 &   0:9/0/physics_layer_0/linear_velocity '   0:9/0/physics_layer_0/angular_velocity    0:9/0/script    1:9/0 &   1:9/0/physics_layer_0/linear_velocity '   1:9/0/physics_layer_0/angular_velocity    1:9/0/script    2:9/0 &   2:9/0/physics_layer_0/linear_velocity '   2:9/0/physics_layer_0/angular_velocity    2:9/0/script    3:9/0 &   3:9/0/physics_layer_0/linear_velocity '   3:9/0/physics_layer_0/angular_velocity    3:9/0/script    4:9/0 &   4:9/0/physics_layer_0/linear_velocity '   4:9/0/physics_layer_0/angular_velocity    4:9/0/script    5:9/0 &   5:9/0/physics_layer_0/linear_velocity '   5:9/0/physics_layer_0/angular_velocity    5:9/0/script    6:9/0 &   6:9/0/physics_layer_0/linear_velocity '   6:9/0/physics_layer_0/angular_velocity    6:9/0/script    7:9/0 &   7:9/0/physics_layer_0/linear_velocity '   7:9/0/physics_layer_0/angular_velocity    7:9/0/script    8:9/0 &   8:9/0/physics_layer_0/linear_velocity '   8:9/0/physics_layer_0/angular_velocity    8:9/0/script    9:9/0 &   9:9/0/physics_layer_0/linear_velocity '   9:9/0/physics_layer_0/angular_velocity    9:9/0/script    10:9/0 '   10:9/0/physics_layer_0/linear_velocity (   10:9/0/physics_layer_0/angular_velocity    10:9/0/script    11:9/0 '   11:9/0/physics_layer_0/linear_velocity (   11:9/0/physics_layer_0/angular_velocity    11:9/0/script    12:9/0 '   12:9/0/physics_layer_0/linear_velocity (   12:9/0/physics_layer_0/angular_velocity    12:9/0/script    13:9/0 '   13:9/0/physics_layer_0/linear_velocity (   13:9/0/physics_layer_0/angular_velocity    13:9/0/script    14:9/0 '   14:9/0/physics_layer_0/linear_velocity (   14:9/0/physics_layer_0/angular_velocity    14:9/0/script    15:9/0 '   15:9/0/physics_layer_0/linear_velocity (   15:9/0/physics_layer_0/angular_velocity    15:9/0/script    16:9/0 '   16:9/0/physics_layer_0/linear_velocity (   16:9/0/physics_layer_0/angular_velocity    16:9/0/script    17:9/0 '   17:9/0/physics_layer_0/linear_velocity (   17:9/0/physics_layer_0/angular_velocity    17:9/0/script    18:9/0 '   18:9/0/physics_layer_0/linear_velocity (   18:9/0/physics_layer_0/angular_velocity    18:9/0/script    19:9/0 '   19:9/0/physics_layer_0/linear_velocity (   19:9/0/physics_layer_0/angular_velocity    19:9/0/script    20:9/0 '   20:9/0/physics_layer_0/linear_velocity (   20:9/0/physics_layer_0/angular_velocity    20:9/0/script    21:9/0 '   21:9/0/physics_layer_0/linear_velocity (   21:9/0/physics_layer_0/angular_velocity    21:9/0/script    0:10/0 '   0:10/0/physics_layer_0/linear_velocity (   0:10/0/physics_layer_0/angular_velocity    0:10/0/script    1:10/0 '   1:10/0/physics_layer_0/linear_velocity (   1:10/0/physics_layer_0/angular_velocity    1:10/0/script    2:10/0 '   2:10/0/physics_layer_0/linear_velocity (   2:10/0/physics_layer_0/angular_velocity    2:10/0/script    3:10/0 '   3:10/0/physics_layer_0/linear_velocity (   3:10/0/physics_layer_0/angular_velocity    3:10/0/script    4:10/0 '   4:10/0/physics_layer_0/linear_velocity (   4:10/0/physics_layer_0/angular_velocity    4:10/0/script    5:10/0 '   5:10/0/physics_layer_0/linear_velocity (   5:10/0/physics_layer_0/angular_velocity    5:10/0/script    6:10/0 '   6:10/0/physics_layer_0/linear_velocity (   6:10/0/physics_layer_0/angular_velocity    6:10/0/script    7:10/0 '   7:10/0/physics_layer_0/linear_velocity (   7:10/0/physics_layer_0/angular_velocity    7:10/0/script    8:10/0 '   8:10/0/physics_layer_0/linear_velocity (   8:10/0/physics_layer_0/angular_velocity    8:10/0/script    9:10/0 '   9:10/0/physics_layer_0/linear_velocity (   9:10/0/physics_layer_0/angular_velocity    9:10/0/script    10:10/0 (   10:10/0/physics_layer_0/linear_velocity )   10:10/0/physics_layer_0/angular_velocity    10:10/0/script    11:10/0 (   11:10/0/physics_layer_0/linear_velocity )   11:10/0/physics_layer_0/angular_velocity    11:10/0/script    12:10/0 (   12:10/0/physics_layer_0/linear_velocity )   12:10/0/physics_layer_0/angular_velocity    12:10/0/script    13:10/0 (   13:10/0/physics_layer_0/linear_velocity )   13:10/0/physics_layer_0/angular_velocity    13:10/0/script    14:10/0 (   14:10/0/physics_layer_0/linear_velocity )   14:10/0/physics_layer_0/angular_velocity    14:10/0/script    15:10/0 (   15:10/0/physics_layer_0/linear_velocity )   15:10/0/physics_layer_0/angular_velocity    15:10/0/script    16:10/0 (   16:10/0/physics_layer_0/linear_velocity )   16:10/0/physics_layer_0/angular_velocity    16:10/0/script    17:10/0 (   17:10/0/physics_layer_0/linear_velocity )   17:10/0/physics_layer_0/angular_velocity    17:10/0/script    18:10/0 (   18:10/0/physics_layer_0/linear_velocity )   18:10/0/physics_layer_0/angular_velocity    18:10/0/script    19:10/0 (   19:10/0/physics_layer_0/linear_velocity )   19:10/0/physics_layer_0/angular_velocity    19:10/0/script    20:10/0 (   20:10/0/physics_layer_0/linear_velocity )   20:10/0/physics_layer_0/angular_velocity    20:10/0/script    21:10/0 (   21:10/0/physics_layer_0/linear_velocity )   21:10/0/physics_layer_0/angular_velocity    21:10/0/script    0:11/0 '   0:11/0/physics_layer_0/linear_velocity (   0:11/0/physics_layer_0/angular_velocity    0:11/0/script    1:11/0 '   1:11/0/physics_layer_0/linear_velocity (   1:11/0/physics_layer_0/angular_velocity    1:11/0/script    2:11/0 '   2:11/0/physics_layer_0/linear_velocity (   2:11/0/physics_layer_0/angular_velocity    2:11/0/script    3:11/0 '   3:11/0/physics_layer_0/linear_velocity (   3:11/0/physics_layer_0/angular_velocity    3:11/0/script    4:11/0 '   4:11/0/physics_layer_0/linear_velocity (   4:11/0/physics_layer_0/angular_velocity    4:11/0/script    5:11/0 '   5:11/0/physics_layer_0/linear_velocity (   5:11/0/physics_layer_0/angular_velocity    5:11/0/script    6:11/0 '   6:11/0/physics_layer_0/linear_velocity (   6:11/0/physics_layer_0/angular_velocity    6:11/0/script    7:11/0 '   7:11/0/physics_layer_0/linear_velocity (   7:11/0/physics_layer_0/angular_velocity    7:11/0/script    8:11/0 '   8:11/0/physics_layer_0/linear_velocity (   8:11/0/physics_layer_0/angular_velocity    8:11/0/script    9:11/0 '   9:11/0/physics_layer_0/linear_velocity (   9:11/0/physics_layer_0/angular_velocity    9:11/0/script    10:11/0 (   10:11/0/physics_layer_0/linear_velocity )   10:11/0/physics_layer_0/angular_velocity    10:11/0/script    11:11/0 (   11:11/0/physics_layer_0/linear_velocity )   11:11/0/physics_layer_0/angular_velocity    11:11/0/script    12:11/0 (   12:11/0/physics_layer_0/linear_velocity )   12:11/0/physics_layer_0/angular_velocity    12:11/0/script    13:11/0 (   13:11/0/physics_layer_0/linear_velocity )   13:11/0/physics_layer_0/angular_velocity    13:11/0/script    14:11/0 (   14:11/0/physics_layer_0/linear_velocity )   14:11/0/physics_layer_0/angular_velocity    14:11/0/script    15:11/0 (   15:11/0/physics_layer_0/linear_velocity )   15:11/0/physics_layer_0/angular_velocity    15:11/0/script    16:11/0 (   16:11/0/physics_layer_0/linear_velocity )   16:11/0/physics_layer_0/angular_velocity    16:11/0/script    17:11/0 (   17:11/0/physics_layer_0/linear_velocity )   17:11/0/physics_layer_0/angular_velocity    17:11/0/script    18:11/0 (   18:11/0/physics_layer_0/linear_velocity )   18:11/0/physics_layer_0/angular_velocity    18:11/0/script    19:11/0 (   19:11/0/physics_layer_0/linear_velocity )   19:11/0/physics_layer_0/angular_velocity    19:11/0/script    20:11/0 (   20:11/0/physics_layer_0/linear_velocity )   20:11/0/physics_layer_0/angular_velocity    20:11/0/script    21:11/0 (   21:11/0/physics_layer_0/linear_velocity )   21:11/0/physics_layer_0/angular_velocity    21:11/0/script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level    custom_solver_bias    size 	   _bundled       Script    res://stage.gd ��������   Script    res://HUD.gd ��������   PackedScene    res://character.tscn .2qTx� 
   Texture2D    res://tilesheet_complete.png ���f�f      local://LabelSettings_5s7ia Bz      !   local://TileSetAtlasSource_x83bk lz         local://TileSet_xoync ?�         local://RectangleShape2D_2vipp ��         local://PackedScene_hhdh5 ��         LabelSettings          @            TileSetAtlasSource !           terrain                -   @   @                
                                        
                                        
                                        
                            !          "   
           #          $      %          &   
           '          (      )          *   
           +          ,      -          .   
           /          0      1          2   
           3          4      5          6   
           7          8      9          :   
           ;          <      =          >   
           ?          @      A          B   
           C          D      E          F   
           G          H      I          J   
           K          L      M          N   
           O          P      Q          R   
           S          T      U          V   
           W          X      Y          Z   
           [          \      ]          ^   
           _          `      a          b   
           c          d      e          f   
           g          h      i          j   
           k          l      m          n   
           o          p      q          r   
           s          t      u          v   
           w          x      y          z   
           {          |      }          ~   
                     �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �                           
                                    
                         	         
  
                                    
                                    
                                    
                                    
                                    
                          !         "  
           #         $  %         �   �   B   �   B   B   �   B%     &         '  
           (         )     *         +  
           ,         -     .         /  
           0         1     2         3  
           4         5     6         7  
           8         9     :         ;  
           <         =     >         ?  
           @         A     B         C  
           D         E     F         G  
           H         I     J         K  
           L         M     N         O  
           P         Q     R         S  
           T         U     V         W  
           X         Y     Z         [  
           \         ]     ^         _  
           `         a     b         c  
           d         e     f         g  
           h         i     j         k  
           l         m     n         o  
           p         q     r         s  
           t         u     v         w  
           x         y     z         {  
           |         }     ~           
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
                                     
                                    
                    	     
           
                                    
                                    
                                    
                                    
                                    
                     !     "         #  
           $         %     &         '  
           (         )     *         +  
           ,         -     .         /  
           0         1     2         3  
           4         5     6         7  
           8         9     :         ;  
           <         =     >         ?  
           @         A     B         C  
           D         E     F         G  
           H         I     J         K  
           L         M     N         O  
           P         Q     R         S  
           T         U     V         W  
           X         Y     Z         [  
           \         ]     ^         _  
           `         a     b         c  
           d         e     f         g  
           h         i     j         k  
           l         m     n         o  
           p         q     r         s  
           t         u     v         w  
           x         y     z         {  
           |         }     ~           
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
                                     
                                    
                    	     
           
                                    
                                    
                                    
                                    
                                    
                     !     "         #  
           $         %     &         '  
           (         )     *         +  
           ,         -     .         /  
           0         1     2         3  
           4         5     6         7  
           8         9     :         ;  
           <         =     >         ?  
           @         A     B         C  
           D         E     F         G  
           H         I     J         K  
           L         M     N         O  
           P         Q     R         S  
           T         U     V         W  
           X         Y     Z         [  
           \         ]     ^         _  
           `         a     b         c  
           d         e     f         g  
           h         i     j         k  
           l         m     n         o  
           p         q     r         s  
           t         u     v         w  
           x         y     z         {  
           |         }     ~           
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
                                     
                                    
                    	     
           
                                    
                                    
                                    
                                    
                                    
                     !     "         #  
           $         %     &         '  
           (         )     *         +  
           ,         -              TileSet    1  -   @   @   3        4                    RectangleShape2D    9  
     �B  rB         PackedScene    :     	         names "   !      Stage    script    Node2D    HUD    CanvasLayer    Message    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    label_settings    Label 
   Character 	   position 	   Camera2D    position_smoothing_enabled    TileMap 	   tile_set    format    layer_0/tile_data    Area2D    CollisionShape2D    shape    _on_area_2d_body_entered    body_entered    	   variants                                      ?     ��     P�     �B     PA                               
     �  ,�                   �   ��      ����       ��       ��      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����        ��        ��        ��        ��        ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��        ��      ����      ����      ����      ����      ����      ����      ����      ����      ����       ��       ��       ��       ��       ��       ��       ��       ��       ��      ����      ����      ����      ����      ����       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��        ��      ����      ����      ����      ����      ����      ����      ����        ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      
 ��      
 ��       ��       ��      
 ��       ��      	 ��      
 ��       ��       ��       ��       ��       ��       ��       ��      
 ��      
 ��      	 ��      	 ��      
 ��       ��       ��       ��       ��       ��       ��      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����       ��       ��       ��       ��       ��       ��       ��       ��       ��      ����      ����      ����      ����      ����       ��       ��      	 ��      
 ��       ��      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      	 ��      
 ��       ��       ��       ��      	 ��       ��      ����      ����      ����      ����       ��       ��       ��       ��      
 ��       ��       ��      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����       ��       ��       ��       ��       ��       ��       ��       ��       ��      	 ��       ��       ��       ��       ��      ����      ����      ����      ����        ��        ��       ��       ��      ����      ����      ����      ����      ����      ����        ��       ��       ��       ��      ����      ����        ��       ��      ����      ����      ����      ����       ��       ��       ��       ��       ��      ����       ��       ��              ��       ��       ��       ��       ��        ��       ��        ��       ��        ��       ��                                                                              ����      ����      ����                               ����      ����      ����       ��      ����       ��       ��      ��        ��        ��        
     � ���               node_count             nodes     d   ��������       ����                            ����                          ����                     	      
                                             	      
               ���                                ����                           ����                                       ����                     ����                         conn_count             conns                                       node_paths              editable_instances              version             RSRC0�~��GST2   �        ����               �        V� RIFFN� WEBPVP8LA� /ſ�8n�F� �?M�Ov�J������R��ȣ"�1ة==}�:��x�GT�cg��iPM� ��A@�L�½��33���#�Gc�D@~u�*�(�>$ؑ��+Z�0�+�p����9�:�δWwT��������7[����CĘ�;� �*�(��$��|�`�$�|$Na*�����Id�3mY���+��ˏ�r�M�yG=K�<���:���<��"
| "���c;����<���Z7�e�HTT^�!�I><U��б��m$� ۣ��f��_A��f��x����6P����l��m[�lk�#B�؏��	�ٯ9�C\���Tnms$7(Р@AIVh�l�4?_aC�((��
xA��gඑ�F؃��@Z��z�Xm��V{�����^[�c"`G�nV�M�		Y���Zݜ�Z3����h1Z:h頞�)b�%��X�	���p���?���4$���V��R}�m}�m*�T�*Tpӓ���2�.Y�`�||� ���v�S�E��~������88�_H�Lߪ�/X&���R��:U5�t$�� Kao�1�F��3 x����{��KL#De���SH�iI���J]
������}���^�{-X"IIy-�e� X�������|��}��Kܬ�ҥK�L����I�t���r�Ԓ�0�tII���ݧŧ�x�]��;	II3%�gi�$�3�����L+I���L�K�ikQ�}���D�5�&��r7�.]B� `��=f�.]ޏ�h;�HTf4�F���Y���$��͐>J�ȴiG�*�&Go��,�o�������ְ�)��7x�;7sL 	�rB}�y��9�{o�dջ����@�̑rg&�iI3$DON�ќ5g5� "����w O�W=�U�NNy�i��d��O6c���`0��203G���a��� H��I�dH����Ŝ����Xb1 l����b=Xe�@�
�c�E����q@(
 ԭ�CQ��?��fE ��֞�,\�0.� 6���d�6UGu��7yo]֕�?�[�uY���L��U�{��=
k��'�ߢ����|�x.�P����[��U���f��V��V���7����,1��H��]�ޭ�Q�.��^�m�}9�쌮�&'���'))�h+�}cQOt�P�M�J}VK}V�|f��9 ��6����4 � �)w�'Ȓ�G�:��)(���j�y=8� 6�����W{P@W]u�U�Tu�A��
e\���h�ts��FF� ��kGZ�mʑ{�tLk���������ؖ�H�'��)��ĕ��>ҡk�9J��x��&��s�F��k<'��?����Dq��}���>�UT�P(�.茹DI��f��f	���V��±qıؗ[Mlb{�᱄����p@�5�<����kV�3^����.��ͦ�;�#��]D����BF�:��鄞y�%-�������qж� %)Ի��"b�����N�^�x�$;�3��~4559E.�2;�Nu~"��6�_^�RVQfO�
���r鼿�
�FAt*n���N_&
�kێZ*Wy�m@���_���*�F0�N%�����������@@��3�L�Ov�O�ʗ�:���&r؄ƪ(���'?:e�P��D�"X-���;����"�@�,Q.��z�;�GN�r��ϱ�ћu̽�v�n��x���'[�z��+o ���w�h��X}�@yi ��w fu��ئ�7���hCp@t�{�=�*����2��,so����:�m^����$ہ35���.:+33�e3o3�)�8s�Ǽ%��q�[NmE��_M׶�$i�~��Q�m���j{f9kόa��m�;�l��P�J������Oٶ�m�mۄ��E�� �`�U�pH���D=�G���jQFP�ri�����,���L��p����26�(I��J53��X�ޭ<>����-����͵�9ըJB �iLc��y�dtHN�#�M�B������0����%�F����y_w�N���I��� ���A` ��H���t{��g�ߜkι���U������6z�?���쮴��*tp/�H;W�����J�G鉐�U�+��I#|1�^\�*��5�p/���.�Ύvwv���~<P۶l��f�q^��ΌlI����$K��3�9Ø9`,�df)���S�u�sX*9�8G�mɢJ3��}���F�؇ �x�!�� *��� ���
�)� 8�9�F0��mi������ ����䶑�����@ %�)H�NH��p�j�t5Ւ��d�vɽk6�k߫�̾�3������Q�9㒧|lɳY�O��!mS��=��d!5� �I$@ � 2�=y������7jۦ�i���niK,)��&	v��ġz�����{�����y��s�t��	CXe
m��, ���%[���-[���������^N�����~�̙�Č@�`IH�( ��v*ٴ�}�N�+��7��{���Nz�^X|-��@�qI�4#��s~
���m�w�!�XC�\q�A�!���<U��@Fp6�J�$In��]`,���� }��?nI�_7: @�L�SCN��I��vDN�N�`�l�W�ͻ�&i�w5޽��as�.�Q��0a�ti�t���	��΁�9q�&d����_���t���6f۞�it\��~�7c��3^�1�2E����K�F���^g���w���T�6�D�YBI��b�H�=f"<������ٶj۶my*��16G�q�c��$*���Z ����UP� 8J�)X� �:�� ���A� QP���ԭ�El�I6�A��~��=@;� �� P �� B �]h�Aд��Uxa � ��P1��o*�����0_�����  k��"����7��ŝ�>�x�~���g#��{�c�dCB  '�c�+��Ok3�c�K|Ej����������u�A���r,I7���Aq�+j��m��L��  ` @�o����￧��?ʗ��!�7L�߂�qh�� B���!S���~/�n�|.K �4:"1l�6Q]�m��ݧ�D#@0��r��K(@�h�7��w�����|��, ��]��&Æ�	7ۅP�A�:�1D  f�[ d�+tk������~7$ֲE��R���a#�fps@(נP�! ��"�b��9r��4����3����E$�0� ��U@�FmOTG@k���]���w��; ��^�����X��#�"H D;��@}A �O o1���VGO��=��w?�Y��# ��;��4�3y�s����S���w��� �rLA� �۔İ��;���w�^}�>��w?9N�w=w�O� � �P�d�a�٬�������r *�z���@c9 �Z�(�~������np��v�Q8�N�Q;�q���6��9w�!��	�h��Ҧ6Eu<��*0�����܍�w���Y������a��A�]k���<09 : �mʛ`��, V )X}�o�����n��_M)_��kv�*�=�@@g�7r({�q��/�bs�{�z����9���~�?���vDy{ ����'}�>���Mt�_ͮa�b�th4%1欣�R��k8�kL�IҎL��7}����L�����~����������*����g�  �K×��ԾL�<<�R��N�G'ˣ�<<Y���P�s�����x�u<�:�{Ͻ�*�}�0��� ����sY!� �� :q1\wg�&B�ʀN� �b �F�  P  4� �  �Y��9��k���3�)=t7�'X�8��]�6��
@감�o�t�~��v~&*�<:\)�6�? 2j�H	�fwy�Д��ܓ�,� 8����P( F��E� ��E� (��2�����R�Uֽ��G�#���#�=�Y�y I�_u �qX/�uc�V9�SNɜ�"�Vi�����bs6:�p���5˱f�ܰZ-��e1�~k�w;iei���q�T���C����=�59|)rx���o�s '���}d2�֖�#Z�|i�Yޞ��1�Pz�wJK���]�� �����Pzc�j���� '��a]|�Vx�F4ѧA�$ @�k���s7�T�!�����h����^N[/�e6v�;��<��h�ʝ��yc�l����3��{��Y�ղ�j�jc�K��o-�g9��D+˝���Iz��y��P( �,��V( �,��V( �,��֨__NB�fd"8gЌ|9��ȼQk_�/�7�fy\'N�X=&=K��gu���H!�~���\<Nw"r��4��n��}������佗�3�j�*R�7�r8�C�~SNBǘ������+l���AQ����ܐ���)jyv~�I�t� /k�Ő�6��}y���?��{l��6�1�h�J��gH��٧��,���k�VY�*W<1�3R{���Q��^���L�ޱ����J�H�8o������O�X�-K�{��I��I��IͲNB�� �!��d?���O�?���˓.��b�{��wby�L��p�8O�͙���<������sn<����6�x�C��l���������+��7Uo�߃�W<���)��3u9���w���염x �NBg�ĩ�x勈�$t.(�0>Q�#��Й�-N�&�� �p��צ���a6��w~� p��U�1�cef������ɲu�_��K�A�q���1�1���ڧ��\�߶���9u9�X8ٿWÜ�����)��ks��'؜	����Z+��XZ+��AJo��/�s򳏡y�jU��/rz��}6N�X<������b� ������^i���bާ�7͖����3uia-Ñ����6n��w�._Y��y_JZ8S��X��;罿� $ϛk�Ry������z�;��ü���~��J��A���P�J�`Ep��jT	�`�7��	D*�c".N�ս�<H�!y�\9	�/��(C��W�<p�_���}�%�P^0� ���f�^N���@k��NXU{�\�]�Qo��u�����������<�l�͜g�6g�;[��`����h����̽��2�����a�Z֪V5b�]������.�+�<���o ���½__8���=��;X|5i�!�F�Ξ�^���a�溍��=��ɒhei�e8��9���vN��q�6�Q��g�m�������7	�ܾu�_�E� ���
W9 e*��M@�z �i�� �L����� Ƈk4w�{������~�ţaG�B�W��Mz�.�+�)��O:ٿ���yG� ky���/|�K�=�����o����[|���G��������[�.����5W�ܐ��{+��}�}���
d���?�c��;)�e[#C N�����( 'Հ�i32��j@+� ��bKܯl�Nr�z��+�;߾t����|�~����է�纍\���W�v�P����G�U�;o����	O����_��>���>x�Ct������u7�=������{+��O}�w�}�G'n�»߀1 P�с�?}�g(��e�d�<�!|q��*�B�	����D  $3�3�$	2)#�Jeĳ(@4�0 �� �E2��{���!��'��G���[y�+�>�*�$�}����m��y��ǳ����=���.�V]�o�����x.ރ����]�.<�?�������]��;����������.|�V{˔���_v��UW��P������!�u�y ���jd��0ዽ]e| �P -�$�qѧ+�5 Ai�	&��]W�� _��;(�9 ��u$�:v��=G��E�L@  (ʐ,��{Q�9KV��-�Dq9nel�}�~�<~�}�}�����O���/ۨ7�T���d3r��Q�w�[ɣ��A����z�����z]���5����~��5�Y'��ޣ����w�>���>p�?����P�v��y��X��ҥ7l��d|ޛ�wl,�;��K��[r{�=�Н|����/g_��7F�^S��Q(p$�'=��(~�/"�'�ޢx����@*�  Y�����u����;�=��Zs����m������_z=�|��|k�iN'� ߞ��u+���k�M�[7��.��������w��1������x�~�h+z?w�=�� �7�zͅ7�����y��z��پӾ�7�ۼ��Y��Fo���6����_�����缦�׮�T��|�<���9|J{��������f�ɑ~V�g�Ş���T�?0f�����/��O.#�D���,��^!Ʃ��;��21�<E��� ���� �$A�ٿ^c�{�C���MޣYF�~�94y�������Q,�:�Y��I�˥�_`#I��;[O���G9��OV�8u��	B{�S�C�<��
 K�-�r�Y�2c(���YFP�uv��c9��9G���"ҨDά�d���	\�7�۸w�[I�k��T,_R+ǕYC��b�I],a�H�4�A�Zg6�d�&���d�DeV��cs�!�K�Y�S�!�����Z �m��D�<���,0�6[f���lذa_@Qb2I����L���k�k�V%UF��aF.K p� 4��x�����  &���LH��V�3Y!�ks����gؑ�$4�;y ��;P	7�
����4fU0 R���
��Ƭ�DG�)��l� 8w#a6���G�]��#���8k� �5���z��
�^#�B\�m bJe�JDZ�5J/ҋ�A�P��sD4�Ü�*�u�K���:"���2U�p�e!²*9ʲ*9²*9�r��Z�8W��&�*T�ً�4����3@?1i��d�@E�#��@�Y;�t# 858�>bΜt5� �8� R�R����  Бǌ�[g���{@�	��� 8��Y`�",gY� e96	�QMF	�!W�,*�\��&I�L0��X��}�I�[��}G��F]+'  �v2�#�.]�#� ��ʹk��	
��}�Z*�����/[(��O�
��(٥�(V[���To���bùڛ�޽���H��0��n��
��:r�O�E&x[�oP�]�i�B4�9��, 6����g�]Ȭ @�I2	D%iBܵ�r� �9����@� q���W`��t�i>�8|�o��3��f����Ǿ��7d�d��)���]Z�V~}m�<�iY\���*�.	͙%|���B�����3���Dߌ뭓~�)� �1@  ]~n���mz�g� �(�<wȷ  ��H2 HK�����c  }� -���u"@�P��H��  ���!�Xa5��u�Ĥ.��.B�T+Ti�ֈ�
i�נ��L��GHW��m!�;�[ �I�e� N>�i�]< ؇�ЅI�C+TLC_�/
l\pE��
	��������fG��o(��BWt�$ՌYG?�'����A'�nJ�$ $I���(�h�uL�1����P��[gޠ�`� ���!�܀&@�����$ ��H	���!}�Oސ)'��Z���w�  1�$݌t9%t��E�*u�J�rR��hՑ< 0���a�0隌XS��&z��S�BW�U�ߪ�1E���L�bvX�M�+&jR�0]�Mf��{���pӲ�4� �Ɓ^�A��vv@ ���A��@5��a�L�[b�N��	1�Oޙ�
�0�u@eFO� H��1/�L��ail�Q�������Tb: 8��߱�`n� ���8�m�<0�y�yt�]@� JU��pr��/]�� �f�؝�C�uo�����F��uǥ���md�~�߰{!�����}�'���M	�=. z��I  �� c2�"; 0�����Y; Ҫ�=��
 ����y��D��J��:I���� �v��%4
`�%�vh0�K<���v���~ʮ ��Z�P|�c?�hbޅ���A1Ӯ)z4�^U�'�L/�:i��IU�������T���e��f���Ѓ�$~�;��&F�h��y�fb&���7 �t#�H�JH��	�AH�ȍ�]M��Q����h%�#@H d@������EJ�E/`0�j C�����Y2�!�N�[M�{��{�$o����B ��hO��ڌ�bO 	��u��LE_�0�D�"��i�BPi�^Y'	��,ѩ�_�>�֭*�y	��Sk�A���k̎X�l��%݀�
dv:�! �6�܆ΟL��0�o�3̹�mFf�(ȴ�F^������  �2H�vজ�4�(�ک�#Dg2�d 1U��q��N �%1��
?�� �����%@�u��'�V��K�E/`0�*:�8M�!�� ��yR�3}�k�u���.�
4�"H�q��(�ϘM ]�:{�Utd��l�d���A�D�
��Ց��Z=i�N��U8�>lA|WTy3��{B����ӯ�*Vf�h�BR@ ��� �"�ܔ�� �mWr:~2�]�JR�*�CBP ����Z95�  xh�J5�f�?������߄E"O�I8��F��j`�w R �%�@���)`x�w�@&�ND�!(�t#@?�}�n����/P�~k㭽��7Evn(z?��T��Ǘ�>�<��܉��S�0;�b_xH]�#����M���Ee�S��Jj���	�W-�5~n������>ʼi+I֨ă2��� �<�Hi-�蜄@K$]��Uެ��yZ�U��h�z�� �Bh|	҉�M�>4ɚש�.�ʧ�� ����N��$�� �,���,Fi|G  �H��	4H�ohV[��� @�#��XYJb�Yǹ�;���b@��d����~�,���ժP�d�}�{�(�{��_s\���B���K뫼���,�+	�\֡K k� 
h�����7�5t�x+32����   �! h�C���n"�И�YxՄ��t�X���P������go�����<�< H�|� �p��8n< �t ��o ���n:c�]<�>��2�Eb�H�E�,���� :q1\�Ma´F���-6b!���To�$D�b�=6����  ��W�l�8L���4Ik���W�vL�#O�����!h � (:'�$-��L���c4�-�09�����f:y�5M�O�
����J� �49!���4ɲv�%B��:@e0�)����/��(s���������@�Q���
i�M G�־	Q�t  �AW����&N�@h�p��9 P�9�ڭ�>�u���8���	c�jLB�'��BP;�R)Y$<^��KhQ�����(dɸ���9�)��@G 0�>��IͶ����>bz��1{�mO�y�����
+"k�'N=���W? 	s��lY�n�z�&����/mEf�4�˚'Ǟ4t�����'ַ��櫟���-L���lY��挘^ZD%c�3�2q>���a�4����x萑zӵ'��& ( ��$�(���J��*�C���d��QO<���u�����P
�L���R�?:# �,	IL0h�����T&x�O�C�t�WLT@�p1 �AGg' ��8��$d  ��9 �9�d�u�箲�B -��߽�"�?�%�2��u��׭�-��q�����U�m/ .�O�F�B�"	�v����vL. f�L��~<||�^����}� ���֋[5ݾ����L�IG�HV�~t�5�]�D���9�br�!Et��*�~ӵ�2ޡ�m0ٜ0��F�s��V%f�U`���a� f�����x�P��-/=Q �@�i�ғ���w�^�̌,t�0�e-�� ���*#sjwr���/E@k�ZK�Ft�TIR�B�D�4[�A��_9Tj�§�2�4H��~@������E����:~��G�#���!�>����,�n]�
g%����< �X���bާ���4   0�ر�������t�=  M��t� ���fh�&��t�Q�k� 0ێ����ߪ��M�=� d��39�,FB��CK����=��H����̍֢  �e$� ��b����I� ɛ��ʋ,f"�}mڗ-�� ���g�5����]�T
Tt]E$¢���@� 0Cb��Z[Le�`���޸Cn�7J�a>�^μluC?������2[�	���ox�  dI�,��Q�?bQ�<  &�d-��3��	  bN%&����2,�Y�/�{�� ���D:�:�S�� N�����B?p"��Ik� ���ki�7���O�K��7\ (�8�|�x݂B��fI�t) �#�ǟ�@��  ��R���� 8��4����� �	�3�OON �s�@g��L⷇��/�d�B�f�@y� ��i_��kkӋ! ���  :����u��TD�,5�����.:r�y� �*�n�ʧ���2�;	�hq`�[z�  �V��G1{{n �F�"�Ȭ�h+ `ek>r-�I�� ��;�"&W�G��S-Eg }�&1gOO�� ��|�E�IE����C �, ����v���p1��k<0I�C��#�O��[Ǐ��7�����YF�] t�6�k�쌈�u��H�h����Yi+R��wp.��8��\�/ u�R�'�_��i7�;-��쁻,�nbz> -��0BG P����8�Q&I�0�FgP�ew-#)0�����	L����=���������/sǡ�n72��6nL^����O�����_�6i��=���1"��O��rf����p'� -H4����]へ+��-�k�  f��$��m�8s�զ) �r�6-T��@g��Bz�ڮ�ԙ������a�;�k  02,J�|�Ͻ/����[�K�a��g�����G���h�S��16�%J˙7t'�� `�M=��5@̭�� �ڴE�}�is�bdb�@��koe��@ _��  ����f��!%H�U 4۰�u w�ҁ{re6e� ���b����� @� 4������G�0�
fi)�\K�2�8'�%�X0Ė4�r�� ��	������o� ��m�Xg��i�j%B���ɭ3o�D|s�`*���$Հ�H����Sk�� ��Y  	�������r�x����ܡq��Ccj��%6�x��.�L�ݫ���p�2Z)`�PF���A�i�2s�P�n�S��� @jT  ���@r�&+� VMfL�ET�!�|���S�/��ĵG�~� 0c �C3���g�pz7 � ���O\"l��m>�[e������B�F�K�ހ�H�Z���' XA�o㸎�����p�ld#��b��CV�;�
�L�+l�w���Q�����}�U���s|y���;�4��"G��~�7�S��4V: ���IH E
�4�`���v�����B �|�[ p� �K�y ���#�u����M4����z  jl������8�c� ����P�L=�z� ڊ��t_��K?�;�s�`�t\Q3t  P��ړk����?��?�`����k��w�VY4 ��~�")~掿-4�B]����) ��q"y�C��1�n��Ļ@�� ��Q��?ۓ��Ꮏ:Ҹ�I���o!#(bh�a��5iƳ?~<r�-^�� ��̩_�M��,�[�1 ��� $���.Q|�̿���b��oo	oo�l�xI�s3KH�w��>{zl�ާ�w��yt	�8�����	CT�*@0�lPib(�zsp�7�r��_1����N �G�Ã�Ϧ���1��>�,�K�Ml�{dA� n���T� *@� |"d������٥+m����q�ο��q����(��"�r�xs����_���y��X tY�n9h�R��7_=m�O��7�#QF  [/�/ͤ��G:  ]G��&�x{5͑��_���7J�P(PLΰvn+  0��O��!��-����;���  ^�/w�֣Ne*�� �vb�5i�Tt=L �h��ͩB� �ڸ.&W �'�״��~Ȣ}�f������7�ۖ���-+��>q�B0��6�!�m^��E����  ܎�[��P3  �=8h@�b�:�N 0Ï8�}�z���ȹ���t���8�|����	 @'2O�O���ѯ�7��d,x�e�Ʊ�0��)� L�a�Rj�E�Hׁ�.B �N)b�Ѝ���5����Ҍ��i�����3ǿ�k���F� ٠1 ����*�6  e:� �bv G^ �T�	L�*�"�t�&`syhk}Fko
& �!7�Y?�׎�i�틐�[nx���{�I�M� &e��C �T��v�^�D��T  (h
Z4����ys��*oj�о6XƚR0�޾m��3�i�Ym��Ht�]F�7f�Yc�1n�.FKC���FK��@:��?�`�.���m� H�Agm��Oϧ���\�}�O@7	o��M0{;��zl�c�#���� � �"$�	#�  t��`��q��?(�Z?���k �� }UHx����[�[�0N�������OF��kM��Icl�11��	�ИFV��~n�GT�� Տ�KA@�(���� M��U���|x�x����rF&�%蝕!��`���r&�%�'��h�Q�}9S����3�~�F��hBaZ�ln�F����Ф��:��@ �*��z�I St�4=�xuv�[?+"ZH#-`Se��Ti��m�w��[&2�D�1���|��k����͊��!r���������51Ql�B�A��`r�T��N�EH@�MqY����hRm�A���
,q
�*���t��׹��"mj 1H4���#ghS��i�}oM�R��@di��v%��߮ �����d�yT��u6i���ɕl�4 ��"I4�P w�4q����u5F7�� &I�	9e�d���	���g�n �0�I@	9t"Y�Z����7��#��ࠣ	�!g��I��:���h�>"?�0?���*���!9ա�����B�Nx����ْ���)o���!�$)��=$I�#�  �kx5�
��=� :�'Zz�����xK��n@[�L�I�G�<?Z��q��� ���)  ��T�	��)�O�,��^�%�`1�Խ�,T��W�a�\��K���#��k5��K�������5f�V"]m	�f�l���
���/��R+'x4�v���&H����[�N%��v�1.��A��ȥ�HQ��(��K)�I�9٨ɿ`�`�< hlB���Q�ߺw  �m�$o_�����w ȧ�.  Y�"���i���4d�� @Հ���S݀3w�kȹ[�A���\kA�\��:�<tf�H>��Gꤞ��V�Հ�?J�ԃ�������A2��>��Y�6�=R�
?L}�Ӻq�g=�h[��P�Z���Fxia|����x�;\ZO���-<���|��­[q(��ZX���� ��'0ã՛���1��Fg������>�(��;y�dɅ 	�P��"�  ��f$ل/x�A�	��Ѱ`�E�����yKx��� ��2�JVt ]�O�" M�f�J �P50�!�����c`
 j1����4P@���HZ; @+Z��	�����k; \�������H�)1g;� j`�$�FzԳ<Z�_�~�7x�.�,���?r���>��O۾I������9{J��9�����VkUcg��²	� ��^J7b��)dN;iei��$��A@w<�&�s 2��7����y]� x�  J%�8�]:f��rk���&_��p�;`�H7Na'OB@ܚ���V5�5  �O��+� ��j�(`�d�ptI���`�/p1	�(V���S-�$�cW�M�7k��(� 1CHJ�JC� ;Њ��FL'�4S�yc�Hv����KHRth�T�فZ�Y4�i �g�UǙ����K����ȷP����߼1{���)�3��x��C
B�����sZ+W�Z��l�Jx����w]/e����g9��D+˝��fk���t���dw���^�/�:/ �T��u�\����  �/��	�� `:o��	�V��Q��#�l��  \z�6�Kx`	gb����p�p�a���M]8u�k?���w"��&�e�>���d�G�M8�j̎�� ��6��u�cMغ��a�ZƬ������vm����l�%I� a��V���٦�I%JHO2��5-ny�I�KJ*��p�md� �� � #�� "� ;������Y?����x��w�=K7����²��e�B��x�o�A'�Xҳ��IV�U�Bj� ��E�[拽�S��/�Ƨ}��[�@� �u����;�y:FO�Hґ��'���p���h�`��2$P� �*�j �V2��;&�}�Z�2�~V���c����;�|'<9`BVG�)޴�z?9>�m�u���A�ْ�QV%/�L��[�͇�l��X��V��稥�edtҙ�z�ݮ�ǱMы�P��V<�4�S��f�2��� >4xKL�E������6��b�BТ��C*^(�@M����� ;�ş}��ۜ����)���Z�j]�ę��N�}�����-3��lR���J�HRW�٧��,����W�^�O��� �m�Ү�>���U`a�<m�����<�U��j��;� 	���vA&hA��`oV�|�WA��ˬ�l4��	�c_���1�cP�(�׾�|�U� ~�2!��#I�!*-� >��in?~���3!�:� ݚ:���K��@ ��>a��5غ4 3 )uH�R�,�*  �9qX��q �Ri�h�6r@�R�� �ț�^�RqN���d?�4 dF���ŪيH�q�jR6�J!Şb� y�?�≏�-g.>��wٝ�U�=�#`+x�.�2��;�XF&�mM���\<�`(<9��[���L��� Д_�@P�E�T2mL&���.3 �G"��pm��X�VͻB�* na*bM��|�f�~�,�aRțmì,j���1����-i�@g��&GhLt�:�ƭ��v�u3��B��7�Д4�i�d�B��!o�[�B#Җ=|��<s�������L'�i���'����M�v�S�_��=Ji��1��g^�؏<���S������ ���|������z����}����:3��-��Ҿw���ݩ�S�}�:'�_Ӱi���d�5�GJ������6�~�s90���� *$ R��E!����,>�#`+�T�f�{�L]ZX�pd.���������W�$9ٿX��h��d}�#q�>6g��	�����o�X�&�c���� dE�2�,�5I������|Z7N ��:s�!3^�/$��H �h�k�I�>fh���܉�h�a����NI%�\��/�Z�J.��L��b�U*��;�BD�ap���s�A�6S$��Z����� %�i�5��c\r,�ԿZRv�%>]5 ���\����	�OWM�Dږ���z�'�_O�����߬�W��׬�Ug��k�& ��u����bjw��^�� 8�1K�op��׳υޓ6�6�<))O �D���hi@�%�P����@?،X/��j�BCX�{�=޽lci���u77x����N��uo����#��!6gb� ^�/�jO8l�+iR%�3�� �p�
�P����@�2��	�!@ D� 	�`!��u�HD�~$Ӱ�и��G5� `���H��%��%6��ޕ%��I,�!"���j�ėKl$"��T �*�}��I����P ������ W�E%�I`:��h���g����#(G��d�+��K��CL/�a�Ri�/Msh�94b����\*H�tM�A�;��_s��5g���h��+~�W�]���<�B�#.����{��_����F�h�	w䤫J�ߍ��"���^q�֦﮺|e͕+7�(�������Ɖ�f-2���.���`����T	�I���Єy �y[a�:��6�+ڨx�G����Z��0�@R�s�j�G ��� @�y���9��2RF�c�$wŰ�#��U|���Y:��FHT����s.�����>�ln?$� �D�b��
s�G�/�  ����(s�G�/� .奁@�DM����� �lEP0�a��U���NJ*<��Io_�: uӪ�Rp��J}�]�U ��z���'<��iW3:  ���������k6Ry���n��'���+�P����G�U�������_�o(�K ���_���&N�'B*Y�n�+��jx�[ @L� ��?~/ ��0L%��lP�S  ���&� |�G�R%;Lވ ��Lc��̌m�e% ��TIf�6�Z���JZ�"�s'O "'��f��9"2��n	�ݷ~"  ���L�r6=�^����9I����w}
@#�U��t�l�����2��,��]�T�s��g  �K���L49�sw�iYo�>r$g�q���$I���z�?���I��'��>S�@��Si��SV�����{�#����W���d�ã��v�u����rՓ���qy��}��P�p�w<w���[2�n9=��vg��h�<O�/�G��ϝ ���>��@zi �̌��+C7��?|���	 ��!�O  ؆���fa�h&~�1�p1�s�g�<}
�s�������]|�g��Ė]ф+��	\�̭�r��?"�	�\��3��g������.7.9��f���f~.n�d6W�=�k���!ي�t4�W>���cV�JU��/��z��"'����ۯ��?��h��[�I�\ ��۟��HmEN:M�����I@\j��Z��9�׽��������8�0���`��:�D�]��0�vK|�4�S��&�?�m�P�w����-�3��=R������|�W~﫮��qA4	�_��W �������ǹ�X���pr�Ǘm,mx���l����G�'@~��x���s�  �7�~( o���W+��0�e���à�tހ�q��ѷ���@�f��?qM��O�O@+�&�Q�� t R��eX��@*�&�lB[�d),DPP�$i�`�F��N[��n�n���̡����
�yp�4��77n�t��7�/��r���<���!��X��(�Vȹ�
�O��׻�G� ��A� "�|�o��KȾ����	���B�Zou _�گ�B��/�W�Y?���1�D�qO9>\c����r(�Ŷpv����4�]��ـJ������/w���3S/<��r�?�8~��;N��8�|"˳�/��������W�w ���_ ����� �� ���諯 ��+�֜���,|�?�S���x�]>��yM���]����؇y���s���@eUz���i��_�mڨ�����A4�� ��^Q���+����U hoR�ziA;�@̔
�}؀L��s4JPBDA�ж��]t \+�(���郏V���b"� ��U�F�@DsDU5^���X�@�d���g��Fݘvk3���%n:	pu@�8��J3��sq�= ��	a��܉N���ɲ�j  �-�������G�)���	?�Cg p�nu����_?�Fy2N@�Ao]�&��y� .�NM�-�<�uK3��. �c(�4�����Opf5���8Yo��S��y�R�C�0�s���P��ߖ$���n����{�x��}u��S��9iǹ�O�R�=�	 �S��Ո��G{��''}镏yi�4 �6K�\��  W$�A�m�Ԩ޵�r@G�p�6!]FF:|@���=�����8tX��j�*�= ��UߨЄ: 0��� M!��+�a�� @_i�܌w��W�3܌w=N�!��ʛ�� W8�� �X���sX�  ���M��א������\�e�}����t���-���w|<�����_������1x���=��Kp#唨���g���r�-��Yd ��f ˞��ς*�D� ������w�0�5{y:tV�K��1���(&������7Ol��]Vjl����.�<�msv��隀=�ei�68w����M�ـ�{��{L$�F+U+��3�����"&��F�Φ|���/�߂�8���D{rh����[��c��jm� �!82�B@FDRж��4`dHC
4!h�h�($a�A��6��4��*�����$ڱ]5�9��\�[�<#~��!6L+	���{f����読�Z��#�R��ϐ��ds�~�v��w���W� m^�������.��6��̳X�Im�-��{������P'R����r�2$�֥��Ϊt�,{l��?�oZoZO?�K[_zim�Q��#!���1&�.V� �c��H�/?�	��NX5b�/?�i&Dkb���zVz����G  D��ߋ�>��j��$:3wF�������z.�4|˘t�L[��?h�t�9���5�*
t`����3�:�U `�&\؄� @˦�ɄFl)F�F��<��\ h���Qh6: Za� -#c��'y �2T4), Z#�Ob �������|���rtVMf�ԃ�� [�6`����B���HOt9�~�ϋ�|�n .�[����s�>��3���*X?:|��@/;���}⃶�����?���I�з/w��[ݡǮF�� �����}��zx����v��k�,f	kݷ:����no�I*��ճm�����H����Y�^���3�R��\a��~d�0��6dI
t'�?��h���;�[�f<����`Dbt��������q  I���W|�t%�k8���:r&�%6$.��u��Qu�Vc%�}'�8{U�% �ρ,!�����c�6b���GR"�  �ڏ�5lD�$3 �C�j�3��qf�J� o� �&6  `ұa؈��/ ����%��Y%q�T9Y6tV��
KB>���D7 �}��(HWR���)���ru|���/��i����S���q�s����Ӏ��E�/��4�C΁4�w�І�Wn8��7Tg7�e���[g���~W��?��nU�s�oM������������'���e���[�;�7��y"��n4����� �6��J$E;`F@Z��?��?T�E|�z�^���o�o@�;0�9�O�N�����ހ˨������s��(J_� 8�`��õm���L��� �NQ����[�U�U�4>�h@E� �q��@�m����&6`�����5  6���ߑ���5rQb퀥�@Bd%z�6~B���R�����@l��HH�  ���e <3����PuL��$��  q��(��_ ֶ"�  0ә�f�_o@�\�@���O��k\�P� �xD�-��/]��qK��W��������/��ݏt��S�w~�� 4�@ _^ޕ�7��e�\�ܽ������'�߻�����nU A�}Pq�a}��;ߥ��(���+�qh��u�����%5E�a�@��U�u0�J�Ή͎�����јn����8Lb�͙Awb0"2D���!�Й]g>Q�*��@ 8���1D��W/���.�.  ������>t=���gegqhZ��V�8��
O3 h�\X��ܻ2RYUV'P�G�j"l�T��( �2?UY ����OvD�DG�lQ <p]*2��Q�Eɒ��b�( >;�**�d>��-�� M̒� �A@\X�p���z�ȵz�U �{����m~�+������ o���� \��{���k�m����+�k������JY�;	@��n��Γ�k��}���W=���[:����ȸ�& k���!�$1�d����=\��qWc�Y�  P��)�E �np��xۗȪ�Yu��7�'�����pZ�(%�B�G� �Z���_�a�o��X�_��ew>Ş}US��� CC��'  ��9�*����fqS�� ����3�	��68e`��[��A`�N��r�^o�� ��UrE�.{�G�� ��q�p�=Sh���T�:m�׿�/�@�-Ͻ��>�z�.Z
 :�����з��j>pC����������J]w"�:����7��/���n����yk˯ `pi�- 
9�gw�j��� ������̠?T�O�p��"���93��I�N�mY�*��� ���b�Oޯ��X����ju�`g���8����"EGFy��ߔ# �P�#�&�?^�$�7��S��/�B��$I�f	�@��i��>���rV�]���y�;�������+�� ���q��)��a�A
�[Ǐ4�~z����{�IИ<�(ew��Y( ���@��S� �*����MF'Pr�k�B�x�:�_���>��e��?�P�7(Zшp��>���j��o2�>�	7���I[�H �/	n��>��>���������;?,�]ET|7��sq����ɇ(GZ���� �x����{� [��P���꿙z�O�  ���M���<��{�2�'[��_`��_�N�Mj�TSΐ$���ZsM��F<�"�  ������?�8{�ޙY%à�Zm�}�BH��>(Bm徵W�]׿1�/�o��Y�g턘m� ��uKU��=k��<�>����LFm垵� ��G ����7  a ���O��/t�  R���q�2_��׶(��W�ϼ��ڟ��1�}�|����Z���ߙlu��p�}��u��',��P	�����0�꺓�����A/.�)�ާO.�4N�ǹ�� ��C��a0TM x�G#q�H����`�̀i 3��e��cdft=*�

�� -b
-� 2���~�8f^�V3 -�	�rJ�+��D&��t���F��	���>u�� @�$��$4�	�L���Pmz#ɕ�Ԁ�{fO���4s�n��<�N��4-��  ��� R : �Y t hW <x���JkK�e@�
��%!�����Ի��36�Ο�ެ l���P'�BG��j�8v�6v(I��wĥQ����4yo�TA���e.�'�?
�=ڸ_��~BںEb�bQ��G;���~=0�.5Roi{�c8O�p�� ��v�;�ь����� �;Qߎ�� �G�* �"j|�%����hA�b��/)E��:���Tt^ ���3H%J��D�{��ӿ�/]z;��$;�S�����k��-�M�  ��Q�lOH��8  �.�r�g�J8a����Ʊ�ZC�̠��B��\���[���ɇ���x�)����N�+��q�E��+�  ����ރ	�ϸt��7�	�����k��Oȶ�ZƢ"�l`�������� `�����c�� �#]<�2�����f� �yAg�d�Q�F�"���.v�a
 ��5t�Qa    ���-6V  W����Kd�"��W�����9�{c�8����ٝO)���h�X�S� �`�|:U�ݼ%�r_��+_�6�+ ��K [m6�+ ����
���+� ��z3�٥�@�]~�\�4C����z��Ө;� �O-��/��� pY�\FkD��}8��n&��F�#5�ol7kNԷc�㫿9�_�ɂ�b^�kˤ���F9:�-v����;����5 ��-3LWO#����g�A$�Mf��@+� �T�
�hs��E��Q$����������	���>���00�H>4z�%L�'`�@��P�!F�!FA Np�@g����5� �O @�]|�<�t�������{u��_����x�>9�j$��z��W��� @G3@�1����{z�=����HZ�h   �����_���z�Pl�m��ۭń9��1�d\�ū��D�Dz��0R%��L���?KE?���\�$�%i ң΋ @��"��� ��	�]��g��~A�Տ���d������eLW"�s��v���-{��U 4 z���-��޼?z�G�/�'�S��U�F��U���N ��郏 �L��7��/� ���7�3���m  �	�:~��O� x&இ���0'�9� rg}�B�\��7ށ��θ��ގd��w�.�_6� !��c�p��~fɯ����5��h $	�(Ka=c�h����_�7��g�<��Źk�TY���?xn2daTcZ�b�>��T"���+�5�_�  x�L!�|w�t�?�M�����Z!���  4οP�F]u � ~�̧��pE�+<\ 6��F�3�� /e�Nܵ�*���;Y����B
)���,�z?}���w���50�iQ��T㙋�lt���F����T{u  �  C�z �� �z:�/�-� �zO�nW�7[�ݭ�mK���<��>��;��É�A&�"���R��:�4�^ `���p�߿���?`��9�(���`�Q���c*��G��Ȁ;Y�H��7���o*���kU.�C�p�-����������'o��@?G7�y��� ]  4# IH��@ I����ꤖu �0ߩaY�??�# ���o1�3+v���"]���P��/$�H���Zߦ����xP
0 ��   ����U�}�|{�k�����P�<���B�ș��=��;���	�Õ�� I��x��W",
��p��������J �~�,��4=|������ D
H�ݦo�dwCu�����ә!
Ԉy�4��8*��+4+���}�5�O��'  ֖�Z?�Zr��>�E9I���u���.ݡK�P͡��'O�w�=w����a�0�����8����χGw���n0��ȩr��A��Ev.װZ��}
��>U�}�����9,��_�xG����wvuG��=^k*��v��V뗎�R L�9yX��n�μ3o�"�R�h@�jճ\n��jճ���y��I2���w�n�� L��H��S�E=�䀤#� x�w��Ц�6a��Tu�h�e�Q �tZD�`C2�d ��=����m\�ᮆ�3ө������LM]�4�D�S(~�������q���th<o�` �3��]V�4�N� a��U������҅�0Z�o��T���v�/T�w��@���wFu���Oo)��`�^R����o,E(�.�#������s��B#�B��Op��k4�+��R�uc�$	Y0ƨ�$��e��5m������#j$�]��zvП&����t��I���=uE�$�u�s�@��n����%xl�q� ��թU� ��a�ZQ��$����t �@;!==B��к�&kt�W��5Q3K̭3������ �Nf ����eh6 ������x;f ��k���a�����/'���;����?  ���:+ ^�4Y |e�@k���;f� �b' ��$q,��4���}�5�6��4�����l��d4���w��?m�s�H���n�nu����z�  �Q1
)��Fr��4U��ͩ����   �h�J��`������.�"C�(����
��Z��;2�u{���U �Rx̤��� �Rg�N�j�� �H�o�M]�Pࡈ���x�o��ol��;۽�U1  �� (ZX~� :�@y0�Nz�oW�����;  h�@:�,�c��H�~��^�d��;6�=f�+8� �2�`�K%���t�]��h\F��U���jիF��ͷK��S��R��x�v쯌����|�O��#E;u�{�M3	�rR�������
 ο7�\Ǚ�7
O��:���'�� )f�C'4C ZsF�A6>B��P�����dm����"��H>v� &*��r� �B
���`t0��'8��K���v/Rz��;���x{&��Bo��
�(���r���xj0�]�z5""l��z5�����<5�a�w_�͙G~-b�~�7�;��u�"$�e�5��e� ��~]���UP�i�h*��0�4�m����<ݝ�.�%� �K�~��Z+��`Uن�)"��<��������4�Ax�9w  ��� ��f�x,M��&*x�s �5�%�����!qץc|��_�-@K��b������J^/q�
��ֹf/	���x�  �| �aA��o �xAB�B�� �ɲfg���U �	n�z��<v�Ϩ��U��̓C�  31���`�k�#ԙ?��ݘ<ѥ�P3�]j��  �VO���/dh�Np@�P �[�w���2ݺ��ߊ�_�{k� ,��؟7�l�؈�t���U#v����F�F��7�|c�l�U<�ۀ��rg�@�t*��02*�Ĩ� L������JM&XѤ�DF�r#w��Hq) ��� #�"�^������0:@�?�=@W�Pq��h��nis�	�����4 p�{1���k�1�7�DoQw������o��L��O���K  �d�-]Z p��{�r D� `KӏxR�F#���V�������  ~����?yf�#Ot&]W �3��#���#B�0�:fA_�󉇢�1U�,�HVh=���>���̓W ���R�j&R^GZ�u�o����p����0:	�au�u$jv���+i<� � ��7fTx���#��ho�Q1O�#���ėL��O�➽w�eP �QӟzvN����_��qkx��= ���Գ�e��:�Ƌ��Vc�l��T��(I�Q���)�#��	��B�(���Ўǯ��,�ݺ��"�K��X�- ��	Gg
�)1���7  ��y�*7�L�+((F'ک� � %�l��VTD ����/v�M���1��-�,�{�\v<�� p�o�ѩT��D���? Ͼ�!���x�  �
M Q~�,&�Q�m�ƆM�[�5H��Dk ���FK�ǯ?  �,���q�<��z�㝹�g4�Թ�2:"��h��$�2�Eɤ>s `��FX���P����3(@�@!>���B���H `��� �*�    tD����; q�5��v��1�235ͺ��t��k)Lㆽ�}L�~��z�Y�N��y��3��>P� �~p��c>w���&` #`q�煃&�{ : Z�@i��'�F�����Z�sGh
� �Z ���5�".ǈ���3��(�Q ��YDF��dM�O�:����	eB3��h��tw   ��V�CcU- �ء�O�d$T�fdH׀�{dm�}�Ļ�CKop�:�6��xN��2��?��IxG���~J�޵�|��%�f[*����(1ӿ�uxG=��@0"�c��V����3������K�M��'�����̮�|  |��o���C�Q�N$z��~�tf�"�TʢZ��� xÏ�:U~�����<�B�
��i�� �h�L���&�%@ ����{������0�$uc�M���uF諎Y��er,�f ���} ��̹���  [�L�@G��i�Ά�F���t?E�)�}erm����q�:���<��n@8�2B��1�ZI!��� �� /���u' �H+gV�2�Y�V:�� t��U�U����8�.:H�&���U��^�	��?���
�P��&J���i��8Kg,��=:é���^�3��(;������:sYi���Y���Cg��60Cј�;�/���ݡ4�}z������XCi�-5q݁����jF�� �D��Fo-��;�W�
��Q �1k��d>ޟ�������q�������i>�_�gC�����;������s����
ס�PN@� � $		JB˅�&�p����4�&0����Y�O+�_��&hj8DbD�
)��V���C��a|6��R-��:�L��o���Q2(�7�>D`��9��L�zQ^ ��wXw�"ށȶn�f��o-��. l޽���~�;�ƣ��3�*��ם}�v�7 �| ��t�ǐ�D ����:�4h ���� 5��;��kި��oà@;`�|GTiq�� �������[JF�w&�7[d�4ό�l�c;�L�8k*�D�i���d������yg!h����g&Κ
�Ho� f�{o��n��6���F��F���o�՜�\�dB��Ι�u_Ϳ>��5�� N0
���W-3������/�O_�F`Y�`p�'��޼"%��;�G��'���7#��C����q��)o_���G�w�~7�c��|��s���)�+�ä�}�Õ�M��/�|�#Ϡ#�W�]᪅��1�B����+����˳�{�����|�o�8}n�H=��	���%B�T���"���һU��s�<#�h���\�	s�7�?��[vQ)��u�-d,d�Z
|  �Y XJ���k�����O��̩M3�ߴ����S4��K_足�g&#���Fk�~�@.K���w|{m��NW�x�t��ϟ���-���;������m���.՝�����t���@4��A*wE�	�����G���}��|���3�|�����'�� m��7����d��5d�W~x�zs���[�q�(��5�.�ƶ�����J)�񨎅�  �+�jH��E���s��x��ha��Xa��X�A|���S��0 �����[��"��g" ��/�l_���E�H��p_���NV"���Jvt���q�#� �f @x{�A�}�����h ���  ��/��_�7}u�c��F��w��險�(�)N;�ŮC!#M����MQ����C�ƒW�EH ڙ*b����  I��P㱳��M���9q��°����e�� Ś3���&�κ�
Iq���+��6i093]��7����a �9Hc?�5�)�L-���p��[f��{[�;;ѐ�ɺ�-�O~�,a89!C�S�  (f
v��3���z�G�p��¬��7�� Ś�O$�؊�V�-���'��)Ś0�\B�Б��0jo��%ܯ�rSbd��c+�*��&��0AA��=���ȃf��PMM�%" �7(���\��dQ��ixå��;zjim@�Rg�璼�V"*�`�(�%B�Y�P$@��E"a�羚(�$ ��=��Ԧ���R���o�;�Ł	��柢1����|W���"�{��l��C�$� ���4�ۗ�7dF�ģ,{Dh4PH�5�2�?��%Ǽ.�rA��u�<@��8�R���>���rB��=��%�>�U���!@�PGe�!��2H >���ﮱ��\�v��Zc{��Տq�������ne�Q����$,���)�r�����s��'�AI�y͹���+o  �9Dc/�,`^��XI��2c�h����I:cYGc�S��@jk�u띮�a< X�ܔ�+�� ��Ÿ�"�S�����g>�vB� ���@Hf9�I@S�������T��W<���u)�����[����(��z���.M�����6����z��wQm�^�X�!-
m�Se��``��$�$��w$y�����0@"�t���ݏ yÊ�42�3 �
�9����2�  �B��zgd�՚��w������n����$��3 �<5AG#�M��~�m�Z����2� N2�"�M�ԯ<t�+i���������MM��w�>w'��� �κ��
]L.&j�Е)
�g|�o�~��x��Ȱ�`����8��������{3��p >,K� ��l�CU�߹7 �� �@G�t�@�f��`>��ͷ�/M��O���?���dN�X��zr~:p�x�&��k  �ddB�	$Ȕ}5�d.@ N����W=҄sw ���z�� �7H�%3X U@:T��p��7��D���H�h$�0�G> ����#�}�o��M^.$Xy�$)���C���nB;���Gz;���{/;��h/Q@R*� �	{ �5<z4�Z&<@Y�x�	 �.� o"}�$m�+Cف� �>�  ���@3�fސ>Z���(��A�z��= @@ 4! ��)H�ze�$  B�z��[o `�� ��@�e��VJޮC ��m���@���7 ��%B*�6����]��=����#��8�̇����V�p�o�d-���gA��g>~���}��|�oo}��5kWp�Ăى�g˥̖���,�5 @ X� �,E``�ϟ �c��H�fژ�Ӌdx�>�l�`����-��ܪ�_7�>��f�Fd�� =�/t��q�����AU��C�	��1�尒�E�4f���ؗ?R�>�*����&�q�� R'p�8���2����&9��	h�,Z��I:�5�����3������o�^����K���H��ɡ�C�z_�������C�x��~<����~�̙�~pN�ٜ���9�EZ��؉�ԽW�z4`�4݈��tJ�9����!V���ݮ,��RY���� �[�ߦ�NT��. R[��Q���(���~؅�
���C-��<�� 2�0� &�6k�D��� �h���dm  ��͚���� �̻k� �Ʉ�Y�(��5!h�� � �3�����]�#xkJ:��2�H�	@h�x�Eb*�К^m�g���6ሢ��lr�9�L�7fG6g�6gF._0j2��)g�i�D�U�lE��W~4�w]/�zi2����L��,w
ߺ3�o�Z�Z-Xm,p��=KD�̸prˠ���� ��V���NK�l
����&x�
�o����� j�L'p��D!B���-j
a������s"D�0`Ci��@���iz�	&ST%60*E(P4�ô�S����wQ�8t��ƨ�(��a�\ڠ!�N��������[t:+��)�ɕ��l;�^ `��|In�%  w~�Wڣ� z�E���9�/�N�R����yVX]��z�"�����Ds�jҳ��IV�U1ݺ��Ƣvc�����sg'����gB���z3��ťn��6���� ���A����0��n��Lv�L��
d�(�AXШ�p�9Q	��
d��d��ko����t2�$��`6썼5�HH�%�7���s_�h%f
��'�X�-fA�r�f��0��%���|�=�U ���j^&J|zW����+%@F�g�Z�9;�9;��V��Z<q�|{�/����泥�Yb�4�hei%O$S��U����G��G�&���$����
�,51�WB� ���5��� &��y�  8�ʚh�-�8:x~���?E���ݨ�=�Y�k���g���0^��f�^E��̚x�-���Qo�˟Qw�3��5�.[ 9������]/K��[�N�X �YĹ�O�A ���r���(౛6Яj  $A�"'��i�$� � dF���������tǗۡW+O�m�/���t��W��K��%����s�z�����\,g���>9�'r �"�/���"��;�XF&uoM��x�G�k�,zh�N�e$�����u`�A�N����D��s��7�ݲ�C3�WB  �؇ �0�њ�LGB��������$0�B��tn����&�P����.Q���&��*��T�vٖ��脼k�B��&�W����/�Ѧ �xb�_��������2���Plcr�	6���lWǿ<���%���fdibN�i(+5'k�#�����6g���K�V8s��Vby����m���S�s��������?���
	�ԩhQH��b��f[�J��{�L]ZX�pd.���������Wָ�~龉͙1�ߞ3�E�j�Z� Gv-�dՑH��B�h5J��-7֟ܣ�^���)�\n�t+��9��=��^ �8�[ �`�� �DcB �R��,�w:�:�P�k�.X��:4�� ���r)�@�X��QS�SK��Q\�A�'
�������,(�c�A_�Lv�%Y��#�,�w%���e�f%��~i&��{sv�;�ۚ�%Xn�t;Z�b�{�\�]�Qo��u�XB�{�{<�;��F �]THdH�$J� �`3���XXMZhk��Ξ�^���a�溍����C������9V��jN#:vE-U�*���h!�#���mණ_D��
&؁	`��|�2B�`.D ��f']��:| ��~`o,�?�>r�� �ǉ1-Ԅ:��Cz����A� ��֛2K�P��AR:F�w�ނ�:���l`)��߂�U&���ErQ�Ti��Ьnzi<�Cq�1���C�N�!Y 8͗�b��ea`�U�޺��s�?8������.�V]�5W�\R�ޣzǿ�K���$x,�IW�D��D�QC�/z��[�.����5W��0ݺ��R������� �x��൏�&��Q�͵	��T��g��^XΞ��i�pZMZb��m"(���\)�/Z"X�PÒ���I�˓�c�� �<ƉI�I��C�Vz��Q�ugN�V~.9N��:愴u ��9�{wzi+��v�	`9��~�F�� $ @Q��80�����Ɯ�-�?ǰ��Í�S�=���$�ԙ���&��dS���,�n�$���%������p���Cݙ���jR�z���uO�|�U�Q��Yt��;3�����  ����;W[۟�Z�kv�Tޯ/�۸����}Ŕ�~}�J�zb6o(�@݉Q�	��b.�t�L=Zi�V�H�*,�$[���]!�@L[^\�� h�@ pv:2
R�π��}*��L��q��珥bv�9U<��Wt�P�H`� �/&[��X�Mv��*�P;�z��:o&�X��뼽x���^"�/�W��)��7n�b�|`T�i�G�>��U���_})��\3�hp��j�q}��k�����&y�P,I,)�GvQ�z�j����lp�xs�م�*��U��z ����̓��IH�
 ���6x�o��k-O��G:���4�z6��]�����L�^��Ho0~$Oz[q���a�\m���'���,� Dv|�ϵ `َ�X2
�$P��n�I�!ـ
�M���S���W� �q��(`k� !� 6.w�D� �E�><�.O�?��a=�D x�ߑ��3%N���p�F@kB-AC�hj�$h�
A@�AP �kg�*�-��+�%����7ͬI�$\o~i<�\�H2���]���\ p�k��S �����Չ��3J�?�5E(�c��:ôU^�ęU^X�Y���"�c�\I��V���{�b�^w��b�^��[�kQ��YF�  ��o��5W��� ���Օm�����n�ډ"�EHX�ﾃVf����!N������/]zC�ɮ����dq��9������Zk�4�5���p�� ���lV'�����>/����� �D֞>C��o>8{�bJ
i$
��aO�� �FI��.��D�R�1��6��1�P�C$H�� p ��uz@�����m�Z8���@~ �č��:ľ{`}��DVUğ;�u���	ll1 ���*ebz� ֮�����޻����J�-���0���}�**�VdH-�^aYnz���x@
ZQ��Ż�� ����1�A�H��p1Q�=��A 8��0�H.H���b�xX]
�@+XY�n jb~>˛7��z�]koX޺�蝛|{��ޜ>޿��t�Z~�7g�՞z�o/=�����w;��[�O���	��6R{�7\�  �����u�倯�zt�㛏��<�5�M������د��d��@�8|�Y�y�|�����t�f%��@��~�W��K�����y��ob  �������  ��$��Li�c���3�6�]�ϸ�"�O��N��ᝀ ( ���ǜ���`ٺ��Ș�QF�^�
��@ ��ȉ���/���X*��]6���Kx`	g�7� ��T���*�Y���>�'Ȣf�T�uHDE�,{��b##:��*�Y�k�_����SoIj�{�"��8v�N�����PGɝ�ه�6�޲��N)�Z�␕LQZ�A֩Ѱ�
	1�9�}:r�M 8�TTq��C�Y�����Y�1*,$�JfA�BMq�Xl���}���_��:� @wx��c&��x���_����Y'�l��O���/�2�fa��t�BE��\l�{-�U�9�� ��fe�|E� N�[J�EĄ��D&	� �,ÿpIa��nx�s7� �n�^g+���e���Np�C�*����޵�4��6 <��b� �
�'���5���ܩ�U%�|��KdS;[WWr��Q�tI�6_���&lt���.v�%��������&���=H�͡f0��L�T�6_��y����LbfKrI�z�x:5�.�s���h(Ҡ�½���Y&���*�f���� �:&Ś�bR��hX` i,d��T#
ˮ�h����̝��$ ����쥎B��]i���X ���n��w�3:;�8�خ\  ���K��R[�����;*����2�*M%��&���%s�q��w "  >�-�.}X]�B\.F��Tu�����4fj���5�mO�q5B@�@5 K8�U�  �$�%_)$X p��,:&ɪ�k uH�T���.+�ڒ��ԭ$� ��U5��IK��@:,�m�-�[���+�k;� �D'���'G��D��Ё�;�[-S� ��@ ���OSe��Z�W�h� $Ԍ�Y�������4���D��u  d���C+��a�P��/;p �8d=��*5�{�����m0���+\A�L�N��҅0����=���"��%IL������' �TH'|�	8k3��K�/x���B4i��.7BK��Ll�;.�r	�D��U@~ .÷�a 0�\k�[�.�Q˘��F��yp�Ҡ�����1WI2�]d�ŀ;�0�j aҋ����pF�1WI�?7W���B�Ȝ
R�ֵ�c� ���:
��H�nѰ�u	@a��6�kt�/��j\�b��] �0 �5�����]a����
�� ��w͜�"���j�$�ށ6 &8�^���@  l02d�P'c�'����C��L� �j�E�$)� ����74��HULh K��$I����� vR/6^��$�o�t��Xt�L؁ݘ�J%������{��{7����j(�*U��?��s۹�����	d\s5�p�9��y۹�)g��N��S( k�5WC	W��"��ߣ����:C(@�k���:bn��2{	�t���&I�xKN��8�V�̿n�&4$)E+�8��$95З $
�\����F���ɧ&\�
 N>�8w�4*5�.�*
{��
a6>Vw�:b1@3���.d������=�t�<����E  ����eA/|$���sF`�r	 � eSB�H&�Dd�s( ��є8��CwSxzP0 �S/4^�x�N��.;�#T��(��
 "�Li����hGe�M����	S _�M�5aJC�����L.1� 09����֜��� �2:1�M�L)2�����Ԡ�3�p}
 p�8z%��=�#  N<#d�!��Q�)$��9�ɺ��  h �{����4'�L��u^�.w�ticV�����g���>է�9$nh��y @��$!��E��Q������!�VK��$t :���_$iPS�����v�S&��LE'x�E�5E-��]���{OT�|75������@����~> + _�MY�t���_�����f�mU�[��5lp�*� _�MM �pŉ�/�������cZ�Z5������� 
�$����uAdW���F\�݂}�fSC��$�x�#� M��cS]��ki nn �>�%)��<��E��b��6��D���%���#�<��f�yH��/ �����Jq�糟ɺ{)�DHɿq- T���G��#*��%� ������G�����7 ����l>X�
��w=���
j�R�MZ�o�;<��/PP�o�9n����yo����_�d�4�<���O���.5��K-�N@rF�6m�Hi�s�-� �:Y�t�V7Q��s��  @9�i/.�)2'��\G� �xN ���Z8H1*�@��/�J��@4EY��J�k���   �%ȣC�jVTف(����d�y�����&����?
s鑫�  @�uH�
 |��s�^��g_������}f�k�@Og�# p�R��/�7=��n�n����k���E��?�����P�-�����o��'d�4+��>������e�4+�3��p�/]2U�����8�K�J�A�{��F�x���y�ă�=��	  OiCf���݌�!Uz�1i�!� �Jo8j�R�j�K�  $sԲ���DX�tv @��]�z	�1�*@
�Q�8�0��(�"G���_���	�H.A֚i����, �
��r�k��9��}����3�9����h�!�:�����Q� h�'ϿC�NJ�#(�ن���@h�� �'�Fa��H����t�P\���&Q\���&Q\���&Q\�돫9���|�e���>u�C�nt�����xˍ�5�?ЩL��,��o��Br� � ���짢lZ�p��H4�]' ҉p��b/IMI<*�,��fR�T���z���%�@�:�z	�ʪ��b(�a�f!)Iw���نdB5�$;V�	 ���O՞j�6ť.����R��s����m0��j�ޭL��={j��E�9���mQ�GRe�9ڬ�TY�5m�M�,��TY�^�l����
���M���sg�q�l�8w�����=�s��J8w�[��--� ""'�^���{Y� 2��8�� @��8;-e-E��� �`�*CrR��p��[hA-;49�Y��Ǯ
7:�{��S�ɷk��1H� xS��� �����c�Ӣ�C.�Y�����Ѡ[4����
���sm���H��@ ��K?'�9�p�ö�PS���\J�ϽH,����e2����Ө� �ɧ)��#�=���2zLH:�O��^ ��IБ����� ��o�gE˰�;:�N�J;3�\�&l#�͠2*m3l�	��+��2*���׽t�C��ї�.����6I꼹�Q$�}�7�e������TH��R�h�4�dD� �����^TzZ�C�*=��S\��Р �����T\��"� ���هΊq3�8zE*�����4�gX�/�@z)�x�K� E3)R�X�n5� 3@�i�K�U6��7�Er�q��d!<����װWnjJ�h��#�Κ�4�oA�@��sW�@!��� H&.)Ip�	p�a�c����>��=�?�� �	��1�<8� � 2�nm���/�x����x Zy���^E�P�5�]ϳ��::�Y�� t�ܢ�z�v�e�����e� 4K8�a��)� ���7�I��g,������|f� ��·�^aa��@C��ܭ�B���:@i���K  o� ��	�rf�[@[F����1��r�C]$C�!DXр�(�z�f��K�� B3�%ȴٓ e��{�!sV� ؽ���9�9�$Ѱ�"�#�bN�/&0^�ʅ�b�"���e� .����(b�.B�r=�j]nJī���:��}��7�ؐ!�.) ��@����
X�.	 <�D77x���,�dC���(i�3����\|��<���,T6�"Z���D�6"^>5Շ�G3�<����Zِ�I҉h�9m��܈K3z[�6aC�&�F$��)�W��2����E�X��U��.м��%���A$����w�)c���wp�ʖ-����-$��;&�F�ͷ��$%)q�� <s}%$
�MHII��4��X����  h�tMĊh
 p��1TD�Nz$~@H�����+�bZm'E�䅇.�r�IW�
YC�%�5 p���K�g��7��1�m��m�d�Q&a������\l�8�9EF�T#0� ��	�Qe{��b� ,h�c��QT0�p�B� B��Ξ�d7%��
��JɢWTH ���f'@�Cg؆=P-��r H�(�Z-p7@77 a�V:��)t�(2 �"Ȝ��(�,E �,� �CX�v"E�x���U�8��JDփ� 4KucjM�M���	 �_�����lUv!thѤw�&��M��hD"�fi��v$r|x��
o��Hܔ���  D�NK����_�op  �M  ���	���ND*\�2�T�����Qҁ$����7��o癗ae$���7Ф��|�k�	C���6��#��Yl�'E2:��u�AB���:!�U� �B /��%�:�^�_�o�+�n�m�-�vdV�H�w��	ο��?{'�~b�n��d�n  �
8 /j�%H�$ ����	%+�,�(�����Tbps�� �Y4\�ѐ�x�Bc�u�	4���� �Z
簐+?��P+Pd��7  p�W������\B���G\�!�A ���U�K�}٪$��Pk 4� �VH�C�_�M�V�e�JDŁ+��@X�e��IRPPPJ����$���
�KK�{��B{χ���'�$���e��t�ܦ�А<�@��`�#�K�o�*���\�`�[�x���a�'�r��x7�+��W������x7F�*ZN�������j �^S�HO���E�Vs�.�)�z��
��g��[�H��K����r���*,�-�m�N�[�7:�r<�(���W�5*B���T�=�k�� R��w�/Za0 ����/���
���Qf���$�ҕ̂x�B��m�c=�ԫ� ɥ�]��w�}� ��*�ל˟���z�r����?�}Ɇ�8g¾և?�������q�Kc5��a�k��O�T=w�_:��9oͰ
��^�s�T�3b$$�e�����c.$"B+�1E�)��jVQ$��^Q��9���+���,��;f�:��g�X~�  �� ���ͷP(�����߳�_�y���<�l���V�D�D5Iy�\�"Z�P���&�N w~�b	 ^�<=d�BT[��&;� hg����t9 Q�  ߻�y�� �t�����Ӫ֦=���p�t!{�ٻ\�G�'����_7�:;kNа�C��5 �� @��P�
XT
�^�.�������{7���?����O��=�Gw?W�|��-�^������yǩ��͍����|�&���<�G+T>ry��i`��� ��B��������M���*�^ I��n���T�j��^hz��8wcq<a�qq��i��E��VTm�O>0�k�X�������"D��|�F,D�%�w��bWl%P�;����%��G��_JO������m�t�� ��	.<pF
�A��mȱ���YE��;�	- ��+�p٥�z�:*R�?Rf�DB ��X�R�+��HZ�W&_ p�i�»^��%�]�daId�6YX٥M��]�(�w���*�Gw�$GN��E6@%ZB+�)�� ��pCB� �0	�K����T�Q�o{o_x�WR�% h|�>kx�:H*��T�tE��
Aq	t]k��{�]E��շ}K�@�y�hٿ�@+k'��Og��� #!Bd7�����~V�t%��s�]�����AU����$��h��F `�'0�F��U�haU�YX�@-p�x7Z8n�"��x~��uG� �s�i�Xvp����
 �pE��x�hL���OMBn�U3Q�&���/	1� ;�h��BF�$�E�����AJ�� P�;��@,p��h;�f2]%ʆ�"���K@ ����Z"���rK��!��j�q�=�fv+>:����[�+v|V=��,.7��� 3\Q �� � ��V� E
 x�\z��l�Ͷ]��Ţ�!]�����~깮=�yC . ˶��� h���x�Y�8��a��͛-m�h�d�X�2�l�a"L�{�Q{	[c�.|�>�v/E�{@�� g�t��I=�.7�w"_� @l���W}������!f��~i��K�0th�fh��#��*Y�i�����)�� p�5����@@ @������: "��`,N�[P!��n����/dnZ�9�O
V�?��1飃NϨ=��N�� 2h��"-v�U���Z �-�O�/2��i�' ����Q-6 Z�ĥ�!p�6�|GS���:&}!tW�$�X�O��a�~�h��i'�jv�w�l_,  Z�#�v�x���=�@
R��W���,�d v.W�F���Oi%�^B�Q��Q�;Z H^n��|j\���On�h �x�k����4 Y:�_�e{C��������tC�C5�̆�QM��Y��ϥ
d�f�� 9vR �/���+-��-��0��\�D~�N
��zh�~`TJ�q���/�/�/s�^�W�"�4�_�� �����7�^ �Z��Y��k)���܀ )����c���)�l%}'h����V�`���A `�`s����������D�����r -����3<ќ�
�Eu��x�G�
���v�Mwl�4 ���0���#���' �$x�gcw	f���"Zp��^@�| �z�_czLF��P���E�QZ]|Xi#}��&4�I��q_L�RL�~���^D�u� �.<�%xd?�a�ֈ��{�k���[7� �4�x��6s k� C ��������l�@?k�G���]�%�s?c��C̷z.Q�蠻�h�Vw�&c1EHE�w��u�m��ja`J+��kIY�1`���5;0y��/^�:m%� �/���P����ަ� �?��
I52�%�|��͂=�6��
�nv�tC�����*� h�0��U`���F@ �f�x�a
 ��h��k��E+ �;:�[����_�2�쾓��q��/o^4�)8u�Ӏ� ����T��C���a�����)�����b}�!��΢��P�Y�Z�2��'V�&2'�}���5�řw�į�P���k �+
T�`N�t�   ���D'x�.� �ָ{���R��bk�_��i�ΔMI��] �� �@խ�48#�3]�-t�	�\_YK��?D�x�:�2� �'Z��M:;X9'�W��L1���]� x��/�ٗ��@̃Z�\��8� �� 4���0�3�Y���|I�_�w�/�4Flb�*^�O3=B�ӕ�t0fL�h����梙\:��4@�Ux�r�x�� �!@�y[�W�?�D4�f�)�������¯6^6u��Ȼ�,|�?{���@ �д� �Ҭ	�~��;�^�����^Ғ��	C���l�U���|ϥ�/��W/�X����
�����P�m`��~ @�@/UҒ��	Rf�qa
�����}�|38<8V����1ۛ��v�4G������?�8�A��p��RP`��<��X��v���xt) �� �p�WĀ7J �� Dݽ.K�f?��󫛇���w�|��?h9A@�4�-��:�_}r��Ͽ��	&-�0t�z��D'�OU9�Ͽ�Wͩ��;��'���~��wA��y7��Ϲ3�{�l���\������R�$Q�$	ẼZґ��G��5 �-5J!�G.����_}rI��_X�5@(pC������
-�p�Le}���cb�y�Ghbz� �f~Q+���=���� W}q����B���\XAB@k'X	�qh�� @  P��N�C�����[�y�)z��S�s�����$��u ���@��1r��%rPvi{JaD��<iN�>��@ !�V 
��Ly��#�(Sڞ콵��{d��%����v��y���d�6��V�c��~�U��g�����U�]�,%�|����� 7xt���re�n�����  mzˁ�0�3ЩYT�Dh  H��  ���'�-����L�[��Lh́5e�C�xӔ��C�Γa#r[��a�k��pT` @h�8kC D��]��)zk� ���?����fj�]��e� �a�P�1爪 �Z�74 ��7
�6���z �w]Q��]� ���)zOn� �G���`q@�	�Ȧ2� 4�@�#� ��t ��z�_�����ϻ0���M�+��~ � �X��	 P�Hs�N��t&/z�\�옶w�k�-e�{^�l�������sw��<u��g.o�Z�\I{:�km�� ��.�M�[ЕBN����4�� >�3�0��d("��5r��
 �7�q���X�|��]�� � �{���u����0������rj����?`� (U������g��|����GX���m[D�� s�\x��s�vdFjp�	�> h ���@������= �N�z@�	h��2�s�t�53Pv����ϻ���%S���|7� _A� `%���@d�tm��=o�{�ý%� x���P��C)���� uf	X�D Fn�M��j( Fp`Á5��>������y?����������l2�_�֟1AGC�{��P�&�k8�(��S�B�����- ��P� �  xU����� ~����9��Z Dn+o�5�V�0$�w]�=��$�wIdC��wA}_Y7Uo���ƛN�S
������O��ו�� u�U���bs��:"����3 ���5�;�,��u��XTX��v�m�j��:��l����	D�X= 0S��5| � ��o�l��w��E�S��oY䶩z w��& ��VU6��G|��ޢb�! �s���|�3��?�Lxw�����(͕�l?�m�LN`�̷� hH$p�qt�{�g ��h��lî�� �2�ɑ�-PB����uB�� �2���S��sQ��=Lջ$4?!  �KUe�d62�`\�#c�x��)��O�}��p@�%��<Pj��>ҲL�������Sg���<]1�X;�� �$�H��M<T64�xD/Z�p  ̡�;X gU��p��G�E��铣)�,!(����>����0 }� ���M�C�Pk����#���g��|�>�ne�Q?u��Hв���(��2��7�w�� Zpt'����@p�f%0��Yi���2���$K	Ҋ�}R�<S��y6��!|�$�%�|TV%��p���hBR���=@p�j*P�&�-���%���ZB�	ȰV�n�	�Zi��K�KKD2�ΰ���$��|���vݷ�?��MQ؀P����&����b�x�����8���db @&�%�F�
I(P�U�^v���,X�9�7��.aY}���/��9yh��K� �a�=�!��_��-����C�<�M�H��Fe@\�߾/~�?���K' �I�	��h��*2�u���	 �,����(�7�I8I��OE`�� �X> � 2�er�N��Tq�]P.x 8JMI�-�n����8� ��� � ��ҀX�F�R�}W����m04@;C�O�iJ�Ӈ=K7"�krh%F�f[��{^u�?�����o @h:�A$1"-D
 DE���}
�1L��&�@h�<�'�|��,�O�d�K����V����ƶ��ш��҄��/��?А��)�eh�HM��-�R٠�c�:�P�����VP@� w�m <z��}riƣK�2�f°���v��4�����l��v;�\  ��Â;�"4΋�`�̋��btb��Mz_�qq �h�'B�G�x#>���U
��B�E+ވ�o�z� 9=&F{�}����F\��h�,��蘜�7��&��x#.v�b#�Qr�v��R[��61�������!��Mjo��czp>s�)b�,��*R�u�{�۟��w������ai�(�Q�:X�V�	��~��B?0�W[�P+�D���M
�l $I�n>h#����N �]��t  )�d@S��⎳CDL��� ������G����Q @�͊Fx� �W_:�{NZ ���!�ݧ  }����Y�
 P8�,ƴAk�C  ����֦h�m 8=�GC}����|��|g ������G�_�Ih��%���Ma��(�hQǡ�ר./ 6Hz���5��A����Af�z��S3�p���t�|Gl4%w�iGp���H��P�z�p���FlD&޺����AL�0�Z��zß��=���t�ۮ�����"�凁��V� 콞.���0/UQWx�l��s6Ja 8��q �A��� �4��x@& ��$	��:H�$��z�h&�
)Z�z�J�	 ��# �	 �f�d: �\d�������ˈ�T�OE]  t�	�'$�@R��	:#.xd��xf>  #�3@��GY���%>�'	M,V��F��g���G'��@���j��Q?S�=8� _ѦP^zu��øG��%D���&zƊqy.��z��uj�&N��F�뉍�lλǟ5y!��hG������Yz;FHTq�;����Oo�f��G�� _��ߣ�����j�n��Zt�������_�ԀH���9��?�^�n ��.F���>&�ɠ�^c��>���(�nP
i�Ao�gHM ��I�Rc&�-IZ<~?�� p��oC `����W ����4�.��'��e�Va��dʟ6�L�� Vg	��MY�V��=��M������P�-�g��#�'�b�/�F�̢_*z��w�+z��&7���F������������hQ�͸vMpz��y�g"�g-�T��8o��3Yx�
��!���� .m]
��� ��rT� P�e"�}�$Z�i���d�RK ��m# ��_��f�5Ԥ �B:Mrج�*�
�v�T�A����F�� ��~� ф����	���,����A�,��7�!  ע�ü���عTH�/z�p�v��/$�,��O����?8�i��b'��3�hG=6bE������L}��bE��}
襎�+V䙐���+�P=6cE����N	�w��M����	)6����U�"5"��j��GvI9}n4��~5lOv�Eu�T ���C��j ��mvj	��ڹJ �!���	^[��aά30:���tA��ک�Ԣ��� I[������Sv4���W�m� x��$A�u���Hh�	${��0�w�<�յ0�z���Ȯ����{�n���<;��%/��B�oΘ���ջ�V�nN�Tc]�eG�E���_���s$/
�y�B�	��^�ZR��Ⱥ��ˎ̽Ȱ�{�z�䥣X@��9㺿�A��S­%�撱Vux]s���K����>��zJ��$��Ȧ�����Sk�w��}%��ov�bLؾzJo�n��>exޫ#{��{�Sz�a��6�����}�.����9x�z�ǹ; ��>����ox��C��J�uu��s�۟�(2�փ��.  �^�����h�t� �'��.�%��9�  �pظ�^�+ ��H ��v��k( Up�N5M� �M���?�@ 8I���V �o��Bb 9��g�k�n��?�_�_�	��T U�(񏞰��t��O` 8��T�����e  H�f����h �Xp���57����. T�w��G�n  �E��3zo�w�nbhy��E&�F��m}z�ε��[�nU7��e�l1F&u$�.1�B~T�Q)�y[�xTƫ:|���/Y>��``�1r��ax��%1����)��AI�c���#s/^Qw�֧Oڹ��p�̼���;v�#s��+�p1����X��c[��g��)��~�yޫû����#s�2V,�7`�{���;��nMd��[���v�����g	>�� Z��K�`MzM�Ee4����^�w���ޗ�@���o �VH.�V��%��B�G�RN��&`�5 �0A;�	F'-�t �`t2Q �]�%�]:���R� �1L*S㜝��^ko&蟎�:r2>�p� Px��^�v�� ��� ��{�C� ��9��tJ"�#�^Y"ܚw�ݳ��6�����Ȯ�Jp�Lf+�s�pٽq�k��XK�L��-Z�tݍs����qP1��#������2����6��a��QV����VN�}��w9�vo�s탧�[e�=7�n���j#�sz����k<*�گT���ؖ������qz��Xr��­��K���k���5��?��~���о᡿�_z)2:��r�����=/��o���.�Ԣu����^5$ �F#>��8 �a`�#V�*���ts{48�.�V@-�*�d6 h�4Zv���^o�nȔ�����qqp0���"" @��-������3Ke������7W�Z ��{�n�`\:_`5�a{�W^?o�������!��r����4��_7��8�/�Z|Z��~䯛��$���}�~��M8<dc�ʃ���7>-ko�س�����8�_9�7�R��]6fV|���{�����»< H�E��~��K�>�  �gޯ�����f� �a�|�s���g���a�������f�Z[�����  �z���*фl��A$�����+��{�B�-
�DG�, �m��ۮ(�w��X@"}wCl���*��������3P|�3T�#<lB�5�;߾w�0�sp��y퍇�C���l�s�ε�<���������=v�1�:��������;�c��cr�ux�e������w��ε�J�������+�l�s�εC��.�   ��7Ԅt ���z������@`��K���n�9��h z�����g.��C���M���%�]k��P��l�\@P��Q��՛��u�	�S�69c	+v���h�����cD`�>/t8H�I��I�*�
���k_�2�������|� J� p�v�(|>�
 8d��l_��A�n�u�C��O�2�f<�ދE���\;����;���ے��>����K��u����%ɋ��ҋ�
�����cG~���%ɋ����[=-�^��k�Y6?�&��q�!���J��7w�v��[����n\:��z�,���{�  4� �Q_��7/"[M����7�Q��V�O��D�B w�G��۱�\l� 	W��� ���y�v�u�"Ւ p:A�sD�����Lm�Q�6s��J��A�}�y������RP�CDJ�����)Ѡ̊Z���P�b���m�� �|�RE�Nhx�m�ù8 �2o�#W�v�[ �N���j�d��g��^'G/ro�u88����ho�?+Y�z�űZ��,��g��|����J�'�l��B���S^��x��?���7,�ln�]1�ջ�~vZ��=���������ڸ�-{�}�K��(�O�Ѽ�w�����&�3\?d����?����U��ص��ƕoػ��>�Q�����������+��K�!��]���~�@U�vݏx����0�H���>�Ѓ�����LqF9jQ �:
Ŝ��|�������  �@p�>ǯ�;~�����|��_���0;�= ��		  5�!�|�3����x�  �!�LD:��OP�!r�F���@H�0��?~@�Z͉���d �M�5ȴ�@͓/	!�	��Ԛ�
�;�7��������u�����!��VpTC��G���8|���l/�� ��׶�D�ӡ۹��G��̨�O?������} m�҄i *j5j�T�{^g�5� �;��f�l9-z�|Z}*x���P ���P�*B�3�A������g�9\ ��alU���*�#�TS`Ҙ�ozOx��/hwL8>�Q�+�, 0Y8~���b\w%`�r�e�a�2'�3.��$�;n��D��{�C������&���}�h���J�+�i!����o�q  �3��u�6��b\Ժ�)����<������2p���T��ۮ`���=׵�l���;x P��"G��b.e2���h�t�4k��;��?��CoݺWGd�˞��ˠl���;|�x;�p����c���l��7�`}�s�g>�}� ��ݱ� �rxglf�U��9@���kF1�ف:��&	R�a�L��h�Dl ��Ԭ L:N� M�2r��2��(��
  29`�D7/P��g��{HBf[���~�yDgQ
�+Ϻ��5��w8 0-
I  F<u��H�p� �� ��b`!��c�y�y`�p�5�0�  5�"����Oo}�/�_�	3�/e����T�o�Є��ltB]��A�PXZ%�j��[n�WS$Y!B]�DX@w��%��&��������� � .�x�<����X��~F�F��90r����?�����@y�
!�Y2ʑ$��\����  $�	D��?"I�$��揩�B?���p���`v�'hA�,g�\��M+I����u� �RK���s��L����)	h�� �h�W>w- g'%'8���n =����v �F�v�進�{���k�z�&����F�^HHL�Ѿx�O�d\�ۗH�Eͼ5����E�\A`#y8�d��8}潭]�6 �� ļ-oT�	%��o��}� T� �����Moq��7 �p�g`>�5g�7����
V.p T�/Дp�(tE2:ie�Ĭ���z�T��}6x�����2I��j�$	f��N�fE��\�݂�����s���a������ g�j:7Z��8��Ml0B���'�N2,����H��4v�Ԅ��t����39x_�P��-�5v�D�y<�m `��@E*
�MY3<�������'�
 �Ih`�Ss]͓�	  pAr����T����!?��;Ђ=  \�[\   ���J�`ֱ���9� ����� MRK�Ff�I�$C�5ٺ�) j���:뵃I�#rvC" |I&eM���q���&�Y �f�����4^h� �<� 9��C�d B�	 �<!BA w��3@�� }�z?�B���|u���kh���������k�	��d9ذ��-����u��K�VZ�f2��?Q�UK�*�/����^:�fu؅
 �����@�갡0���â}�l���, ���W�0Cڠ)AҤ�I����~ �^\6S�Ⱥ � ˱V���Y/  ]��O�	��"��2&��� 2��3 v�H�~��+g4��*�^*��p�C�z��@VQ�>�7�N�zv��k����I/Y�6@��7�=T��8��m��ǜ���	��=d�8������?$�;��+���O ���b� �@�ss������!��1��� #��!�&�U|�?Qz�����4�����`�����Σ�����CBH-�Y�:M � �/��.=i��#L�n|&�3 �PǇ��
mc�m-P��ڰ�� K�Q�PVhF� ����w�#�}����"5�'yv�}�x�>�b�<�l�}��Ac�t���+�M;Í{��8N<t�Z���*�C4F�>�߉�Vh$܈C'��(��3v.�{��4�%��
Y�@e�;vPIB�%��	J�]v�������W�x��{��5�le<��@� ��x�g�����>�myP������;,��Y-D \mq�d } 5U���	 h^���Ƴ�	W0�kd]��)��C�ZZ��3�G  2) \$��  0�|JoZcPS ��-@���}�&��<��?��t;T ,���1� ���+1���t����B@��:��K4 x�I� x�9�^x�^��r
h0�˥D%�WXo��[�ģ��3�����ba��!��z�s+T��kK���.s�E�z�#17��a��-����u��0�.�c��}�l�0��Q\����ڀ.�>{������u[~D`���G'�T��DM(�8�>9 );UY!�����"ZE���_c�>+�q�G�ѯ�����^aؓB7�x|�����
 g7 �M��l2 �۬ƹ�P� ��J��l�wR{&��� ,`a	T <�Lm�&XF2��w!$y�:��K�B �*Yo	�['���F����貅B M
X"���(�; 7�@{�go��ñj.V5����Z;�s����c����j�uxWS��A7v�����a�}񢚻~_&ַ�� PE� � H���۟0��F2�̩	$��' �3:�I �
Z$;J�.��8w۫ h1�oq�����Z�}���������>� �f5O(2Gۭc���B�$nL���=���	0�vf�Z  1KK{X P�֐����l Qp5 �V*@@9#U ����  �whܽ�"�Y6�L@��Z�sa��CD�Ut��[�š�b�V;�<�6N���r�<{�k���8�+��0������"���{c'��&����@u���?H	���;� n�y���p[~�m�1�r�f�l���I��������O�4�/�  �Jgo{5A���2��Wo9���x�(��H����U�w�y�h�z�١�lIj�J�e�j���P�KN*�
��G�*e��`�\Cd�{�,��D��7�<��D@&�b��d���]jU�/ [Q	�����h��&ɋ��&a0� ����mG�k�bY/4���kS�j#�CQ$��uJ���%��Z�H"]�/���K3�t��~��$HZ��ؾ��e@�U����C�9_[/����~=�|ZH��u �0lpgE\�X� LFb��9���_͏�t~�_�@��qr|�H��q� �A�nvno;��Ibt����f�, �����p�� ��C��̃�*YB0h"hx���dh��G��e$A����U:�Z�_2�/f�@!��*)PSȒ}�BB�Ne%��O@6"J΁6NޗvٹEu0jͨ4"f��`sԌ_*G� ��է��J���/�`�sg�j�j�e���RĘ�K���%�_z�֕��Zb=1�Y��֫_v��yj���7��C'�z���m�"��� ��G�xF�2�8���&Q�0���ސ���~=�C:�S27?��uN�h����� ������WBL8k5�z�q�����w��Ϳb�g����������W���n`�������H��h  �@��DL�5g1yh-e�49� �j���tK�[Pn^���;�C/��$ � ����b���㤀�"K.����Z��/������E����+�w  X>&h[>�Y��Cg&$z��O��z�ـ��j��L
/�?.�[�~هn����_:t�z���\H��o�O�N�q�
��d����z�   --�N!�Κ�IԬF L ���ڇ2�E |h�9w��������_ꮼd���_�����y`H����e��(Dr�������7ۘ lJ��M2��C:b �ܻh����|p0?�������S�#'x	���-`�g�4y�������.�����ѥ�Km\�L��Fn5�.'��K�Bx	E�|�����1!TEޢ(Q�@�H�	�����}�!5�RQRyIM����:
���  ����~�Ϸ�Wn��  �D)��}�	pmFrI<aNZǠ�]������'N\�ۮ��n��/*.D d7~���?�&���'?��3/5p~�{K�%l�v���z I�7�����nh�|�� ���D�LԤ3+��vi|�j����FM�gN؂C؇�qv�@��s 
\���������C{r�����:��.u)��mY�G����x��U�bE�(�( ��0�,5^2|�� �\��E�$z�1��d�6�(<@� ڂ1�y`��T��Ab�t6��������E�[��Z ޤL�2����n�޿����~�'?�3�> �؅hwJ�O�G��γ�:�&@ �u�<�wV+uX�%< g5��Q�9\�l .Q�t��Yuޞ����NM�R_��e؆&��ߥ�آ�[ ���C�$�HJ^��H&�SkD�@DA܄���^NV�HO9/�����X� ]�4����/-#= 
�K�U�:/�ҵ`�>5 �MpϹG�xd����y��<v��殇?Q+�z����;|��H�;�R���!q-)z ��џ���]�<���K}�{����>V+g7� ��=��I�.%  
���? �˘}�����[�ְ���:aC�&���+�C�$u�^  �ۘʸ���6��Tyi 
<�MG.���:��:�(d�5"
  ���% ����'�Q��@ ��=롉׿��J���z1����f/i���E㥥H{h�DE��燹��û�����@�>9t�μ�b��D�9��[<n���p�T�^A8�D( G*Uh��5?��͚���G��\Ӯ�0�K��;(�d�Ws� �yW 0  a���G���pp	�η��q.�vGi��ú�D  $��F & Os>SG� ���E	�G��z �|�Vp��4��������.t^���@, �4 ��1&�{o��~?�����8�p�	��� P� �]x܎�/���$�֔nam+4��Q
  �r�R�p�0�e`  ��`�'6઺�ek���(X�hwpW` ��҄���Cn�`5���/�d�@���~�>�"�Ȩ�5�8=���'�O��[��#g+xeI�N��������� �v�ܿԄ�iY�|��r��C.q�HȈ9I��t����� �s!�PA� w
�,��懄 W����l��?+g�\}�'�������_U 8�.M�>97����k��#wo� p��e~�m�����}�24z /<nP( �����˰����'�����Un�u�����2T�
��)�����kl� &��\��XM�����{�X���Y̨��KޱbY��d1��跼��w��{���y6�����
ȼ��"B����]~~�bL��o�X	���B����  Y��6�*����F��  ��ӕ�N�$"��5 sr��]Je��UL)����}��2y����q�5�x��Ѓ h����$'s�dE�"��7  N$k�����FY���|;p1��� x,�/;F �\x��מ  ��H ��g`BCcʋ����*�tV�_9*Cغ�5��?���2�����J��~������ҿ���{w�?&�,=t��5���-[�oi�͋[/})�_Ϝ.� �� $�����^��	 �� ���;a�WFf8�B�Ho��*�	  Hr!r10�M:4 @|չ����WyC ��c��;  ����	  H `���V	Bc��_��:'����VM����tV@@ۛ��t�p���U�*>�a!���z�)��P��vM ���Y����Ȯ@��$��~����ÀB���s���X,�Ԡ(_�q`����������U�)I��/�:��L��P\cJ�^i�ѳό��}fL-�@���GϾ2�'��L��?z6_�E��v?��v?��;�K���x��X� _����wG  - ����t"� !�@�� ��&d�g$�   pk��R������Sݮ{~`'@*�Ty�Z.�7�@�ţg����g a(�P&�6=��GϾ�b�z�f������S��7����bt��Q���?������ @�  '��08����Z�B��/�7�5X2��j�
ϻk���L�ý�A��/ ��y��b�_�+V�l����"��g���I:P�в��>����^�/�L<�:"����=���XGz�J [o��)�;�'���-�'"��0��	aH����� 8�.�|��K1�W�c� Q���'=��evhCh�e�X�KR���>���WX/�C;��yz�$����� ̑&@`��Oŝ�7^���Dnx��
���K��(;�]N�|Xpa��>�>eGdP��=�G�#���K(�a���[�&_b��|�<'%���W���7���5nc�.=/�_8��j?R�jOtwd�a�E�{h�ڿQ���N�=��z �����&/����  h3���	3�V���# @��؀P�@�截#&��p:��D��4<(� ��
�%rA}��? ��-}+R��BΨ �l��X+�J�Y�  B`X	 �UuX��ſO.x�  �f�Rh)(
  t��[@�b�)U����g�p���� 8����$`�'�7��/Mh}�QdW; 	, @�"���RBڧ����.w'  �:� ��H�2����*�櫿	p�)✲)Z✲  ��Ҳ�wp�7�Љ�m�?�U�s_���> �K��o�G�`�%0����T�5��R-⛋D�~uW ��aރ�0t ��P��ۛ�w���Et2�ȅw�YP�7\n ���,���)Ŋ*�FhJ8T)WL�c���I��o����t ���^@�*����9@���|�U_)B � �?� V7����ݮs��h���~)  �y ��X  �����&�<+65Y�� �8���Z��k�`C-��tŮ�aԜRs��� u��� Z" #���愚# E��-�n�Y�1Z �!�7�
� �
�	a�Z�V �3�.V-�LW\�ɱ�I�"p�����ѧ1 �[ҡ� @dKq	,i8h�*��} �K5��c��  @p*r��҂��>��g_X�%cQaq8�w����[P�=�Qz�tó���?Yx�K�"p�>V uu��w���Cf*h+*���E`QÇ��n$)��tC���K��� h�8,�24�lT��C+���x��ֲaz�H�̷�}	 �"�8�A��d��	4 ���m~ܰ���nX ��O�lA���X�
 V�@�!��anW[�6U�y$0�Y�O9��l����?��Ki�z�a��vB�!��#�pYξ��*�9{�N�E�0o���M�8��;������)���DD�D�x�lhV)�8x�
؄C�  `��
 8�~��W>
/r7^7\ �6��
�#K�^�B����@��p����Ј@W[ݫ3��a$�  w��$�$QG��EA��P� תOB�������[���Iξ�7����YN�шs�h����$AKѸ)�ݩZ�<�Rf�p�g�I�,����J��)�2���&$�L�_s���T3P��4�O�+  �-���`��_��y��@W[�$ �DW��qϧ�}�u�b��K���ooB�v����+&��T"��cv\�֟���}�s6>�j�o`��0����>�M8�$��#����l���4h�  2\��($�@�V!z���7���`	�p߬��e�93�S� ������@<���� ˨	��N- mW�	Uf��pƾ�E�硟�� ^!A���I�
 ����%�%��,���g�}�u [Є;9k���ML8��}*��x�R �
���Ɂ�Z��λ^
�\x 8JMI�-�n����8��Rl� � �a�x`��V��6�`�' @���MM��	���^��&Fo"��/���b����&~P+�a(��ax����*Ҕ�RzQb�&p��<�Y�; ��eӛ/����g*-�k������V �҄��/��?��� �B��&��T��PJe�Nd��2@��BGwX���@�@�C����e�. ��� xt��^�������
8h2`��s  �|�W�F���_>W峦� ډF @�� It�oF�l<��7��F\����f��~��C�-�����T߼�;}�ϼFN/�c�}W�}�q�#� w&������K��q1�"�]b�D���/o�!�J^��k��%@����=PΌ�V~�R,�f�� �6me������иw�ob�d @����ӛ<ଥ �I��Ht  �@� �:Gw�})AL�ji@g��&.�-5@ T��,"RϽP/쳶`�  ��}
 Ч^N ܳb5^u�Ш�?�|��g��#Ϝ��\�Ϧ+ ��xAS�	�'~Hb��Mb�)6��_1��SE,�H�УE��34��兞�h@B��E����9z����x��t����|'xu  ���@p:�(�k�c��K�����U
z}Q'������b�6�x�U��Wy�39��<&@� �W�e�"lC�C�O��k�A��JP]�<h�E����ek�#ADS �I�*[5I���;$���B�V���hB  &�@xBEn'��3PL7�- �O��8�G�-pz]�Gv�{  '��) :�	�'$e�)���z::�V����t趄��� h+7 ���&4I>@*>�O�+�)�УE��҇���4&ZM�jM��X�̜��=�'�r#ύ�#�A�*�3=��K\F�y!�z�3E߃�	�m2�ңE���8��K��ym0D�/S}����� \�����z?��U@��v�F�	~�T��
"2. :�	D7(%�2Ao�祤C@ �\Hb�3	n@ h����r` ��Y�7 `.��j�#�3~f�~t�9FА9H�� 
�Sm�za��>�>t�R�N<z���Bo�@�}�{�U�%�bȼI�{��+�)Y���w�}�5% _;r����QO�q��4�qQ/Zτzb��I,�b�y�KE��@\#�n�������u�GҞ�����)��T�@#�%{4�}�<�9�=̡�.��СI�iU��H��$���F�"'��4�Dڇ&�F+��CgU@�\�"��	�b��ђ	�� t�`�,������`��.�>�'_A�q(�e��)�!�r�b�\i?IH��Ǌ%�E+)�v�e��::���"ό���[��N�I[��)��PGQ�+�L�y<�՗Q�*V�+!�g
^��@=6cE����  d� R�$Ї��
 j�;�8g������ ��e& ��Q�* "ZF#�M��V�{�� 2��q�y�|h�C�*,�h�І��
�pv�� n`%�Cf2x����>էcNIȆ�>�p'b�aFM8t��Wȣ�Ȳi��8�Ζ��+B��S �%<$#�FO ����KOx���z����~�	Qwb���%]�W�{��;P�W��AudGs�-G��fX��Ќ�W���͞X�	�+�z+�­�psB�W�?�:��:��9u���-9����e�����V���]����}QAgKB����'x�ɤX@��ٷ�>��zJ��$��.;�/2,������#yQ-�#L؎���В��AnI�S�����#sW��U=4��-���USE�:��h���I�A�P��N~������1����SD�wW,� ���	���%�K#�'mGj��  ��+��&Udnn6{�~H�����������B1������r�
��������?@P�� "'��@,��f�mt�
��̤+<����t��H�t�DtD@�	b��xҧ+d�M�����X� �s���qq�\;���c%mKy��O{�	hfo�N���m���Y>��``����%�V����1G��n�y���I]��j�E,v��s,uM
����O�s��I]��ꞈ���v��(� ������ax��E,�X @ԝ���v�=*�:(�^u�a/Y���cdWG��cT�b�V<i+��L$�dl[�<O��xT%��Û�j��%��㼪����BfY�7�$(�O@&�T��
 �p� �nʽ���Ƞ!�ҙ�  � ҙt(�#�+ ��N��ߒ�`S)���25����\�d_��3��v�d|�^ ��	 p	N��΀V���B���,y(y||W���З�j�1����NHD�ՇQ�``��eȁ]���@чi��y�� �����lq�]N��͉��4l���ּ���on�}+'_S�1Y	΍�������w���i�_�K��O���H�`�Q�z]��d%8Gp:b�s>�7ι��ӌ�����E��9kٍs����qP6^ɕ���bq�:��&QנK{	3@G'�0鰓L:j�v��;�!�?毭>���j�'ћ� ���6��Kސ�'�R{�� PC��$�m���l.&�����,�"��ҸR!�_?�� �?k���ȠL������t;��! (DN 7�	Mv�A(`�b}+� v�?&�M]�ё��
 �I�ѓJ]dhd������9��,|IRa��K�4���iU+2�'��G^1?uKs��?z�ꍀ\Ű��+�?j���8��x뜤�w_��SO�� �� �LQ��k�6��N��u�y�kX�(?�鵒���z->��u�#����贈�(�: e ��I��_�U�,D\9c"�=�<Q�.O8h-̀eX��a�dX�5@{����e�i��j["�������>�M]߹��J����TE
���@��P �g�`.u�Y4 ��	�뮠[ ���x�)�>��2�F'b��u�.r�˅D����rd�߫ߒ�:|ˑ�/z���M�ڑ��0����u��l�s��kG���ꍼ��y)�z���٩'�K� :s�;QW�fBg`�����|).���7lD1o#~X/N��jz݊���
�Ǽ���k��%w|�e6H����<�� eSQ6|r�)á������'Ж��O p}�`����M��xU�A��K��Af�#~4��t�l� �ʏ&�դU�����oY/ ������8���� qP[�1����;t�� ��o$.݈P��vعL�E�٠Z������@OD�Bh�$!�2V�S��G���ݏ�3ѩ��Գ��d�`ީ�{ñ#W%/��WݸtBou	�a�\;���s�em���=@x@ d�b&�쭜���z��y���u�տ��� sF�F|�ge���e�Kx���O��� ��؆��]ќz�qH `&eu 2�F  ^���J!x�W8�V��	��[�i}���
3 -����|X9S�pJ*D�R���x�],�T��0+O��cqx�)T ���ҹ��ҹ�Dm��%���V����6��0;����d̀# ������K, �� a�8|"�������@*����*���B�fz?�`:E��{޷����J�����@)�38����oX��ln׻b�wrZ�}�����Es���/���]1�ͻ쮝�۸��) �ށӳ/=x��ߚf�S]�>��g=�>��n��_��t;���� ��|��N��yٿ菞���~=��b-�<�����n�y���֗���2p��� U ��5 �׾㋕
~�ϼp��r}��[(�Ѣ�yD��Yh�%� �D��Xy��)4�	 ����p�n �#�sr2PӲK3 �'%� #Q��������e&���_x챽��|͓��	ſj��   ��|��0t��=�!� F�
  ��f�� ��̢��Kqɢ�oϔ8x��E��Xb ��}����H�J��o���:�6��������b�  ��e��C_��g�Y!
A 4c�&�  6jpg�ݲ� ܉���&����֪?�Ξ�� �h�Q��s���� ��	WM���[\  ��S�8 �ƞ2�Mk5I��p�q�F'�;uĞ� �%�Sԗw�/��6�b���ԗ�)3���/��?��  �  ������`Α6���o�� /"��o�bfKD(��)95��_z  h��$j x�-q�c,TAR]�1���),�
��Z�$m�h��Ej�iO����kd6������"�p���2�l**�V�@Y<@������3L����k\�O `�	�Z�U��dG0��!�%��8�O�)�~j V�V�XB��`���ۿ��O++���/4Y�:	n���[D x�ۿ�)���9SN\Wth���@��ߚvR+�8$m���M�
�`xM�,�-���@h�a���,�Q�9���Ԓ���2�΢j�C��+{�& 0�̨ �
��(� =X�x���>x � �5��; @���,���!�_3@,�p؅`����r��|�����ZnR?9`��t �o�b���[ ���K  �y�љ>;��M���y�� � z��d�h! ������f3d]d]�K�� 桉���?s��".�@�9|���  �E�'"��_0V�Kx \ýf�A�?5%Ѻ�|�Y�U+}F^�M�Ed���.J�Ԡ	󈱔���7�?�[�/��'.4�5Q@ p7�@M� ��6�! @�7��g� i���#a��0���fd�d��ݺ��  Zlb�<6t%�CD m�b�8l�P'z�e�ķ�7�]��P'3 |�w|	 ��" �&���5*�? ��(Uf��?��d�� _*< P7Z����ĥ��  0 ���������p���� �:z_��W� �����4�((C��o����)y�k���#ԑMgo=PR���ͩ�s���S����Lt f:A�A5�Ԝ��r����f��{����4��x.��G���d�xd��O �x�MR(� �(�Є�~��\º�/���6�-�]��}$�̔E�ԭ��L����ч��� ��&�����B�A@�|��x̨��w|���Z���q�����G�N2��dw��kai���oV`�=��o^ؼ ��B�Wz_��Uh�vu�]��ب(:��}2�iw���Q���w����$%gL�)uah;ZI���A��c��o�|�����>���g���i�O�'Ɯ-��dX�,\�qqs Hh�RZ���Vb$�r�H_b<Z@�642�%��p�.��nP'� ��9�5:g�O  ���p�P��=��Gt���%�_@;��sa�c�cܧT��N�� �:�ah�IL�7��P�	{���A�p��fg�~�Mb  L�|$��>�	Z�`wJ ZF��E{H
���ګ�܁:hGd�'�@ �,I�Y����x����:�=unˊ)Y �&�g� 0��H�	 <�#���� �� �� �����hR@�&E@0Ҭ�/����ĝ�
���=8f��%�C軙q� ���2�H����P��	  p�!�uqk @�y�.��'�Q�5����&�]ң m�F�{� �u���AG"*]�',�|���M�P��O	�0���<m�����6 船�h�$]6��* �i`&:�f��a���� ��ϛ��� `�FY�5+r��cP�Z� �.��Yx�G;ա�qzxx��N�=�� � T��0RN���貗�w��uh�
��ě��o=��&�X�Yf>6��='  <5�<�*��z�� P��\r����d�Q���S�-�fa>�՚<X>p�ل�0I鬇�Md��X ��:������Ճ���Wzo��Q*��r�9�A+�G����%��29u�Q �OSM��_�Ĥ��J���0y�[W'u8�cQ+O�Rƺ���B� �p��Fy:���^������x��@��V$�y�hh8}�+!�ۥ І& �]"c�{�] ��&3`h� �"��V�N �7��+�� h�
�����=>@S�J��sҍ�	���k̎�F�<e��U�5�"�M�������H	]���|��*\�
4 T�=
I$��� :�7�-#A '	 @����~���3�g���b�����쎷�� u��6}�&��<���
�����1؄m �V`��   R`2 @�H�.��m:�w��-��;@-7�s��O=7�r �f>�o  p����Bg5�'K����M�ܺ"r��g ����<����#ƃo�<p�q��7F�tP�J9Є�� %��0��~����o$T�>Ι @�嚙�SS ����NyC)�����e��C��> y��W}  i���l�l>J3���n �-`M6� ����[�R��{��T����w��LV exރ�B>�
�'�� ����FI�+�(P
���*�c eĵ�v�x�a����Z3��  �H�9�6���n�V���ɴ+���<��@�~���\ק�O����[.   �q@�Doft�>��Uƒ��yH��-ë �/"�td'����:�������G�m��~�������;�?Q�Z  �h7�ʦ�  ���N�#�2��j��%Ä�׍�n��7�4+��|X��X�F8b%�o/&�="�܂��A\�N  ��#瑚�[  ��r�3'�9{`'�<5�V��d��b+�.: ��?vh�A�P���&tܢ��R����q���vPFJ��/ ~A�0��b{x� ͦ����,4  ZNGkEz�4( _$)�]��v/��m�8�RfK�@'T�/{U�����:\�{�R�;l�~6�*e��x���d��W�<��4s�3L�bb%�#`_F��"� ���ZO�� ���jl	T��=�����HZTcK`  ��;��(�bU������8�Ȉ�7����P@�ZR�7��BS`���|�&?���p�[:A)~��{G��3�+$����v����C���K��,�� ��&�1�j։ʏPt�������B�  �y ����y�( �����ZZQ��u��
\��|]:z��@��';(�`��+Ϸ �x��,R���5���B��qA2s�s����fo;�fK��$� �I��� ��V�A&Ѐ�,��0X���t��=��u����Sۈ�@�)�C�Z��v��@�!����G����5���d��p�8��h�'�+�w{���v�8w-��*��.a�qL~Ȉ:�<P�/B�%��'H��ՏD(x|��g�� �!m�2��"���8��ᓸ��u�B��H$���]E^;��^�O�84��.  m��kt�T�.肤$%�
�TH���/��� 0_�"���D��G!� �Y�@O��y��q��:���Uʊ�H?��>~άOy�U ��Hi}��R��*�����,�
h<]Ξy$�B���2��������k�"Y�ZM#9����	 �o(`���a	�p�M�Bg%�8?vp�P��[�@�I#_�g{��F�S!������&�!$�!k�&Q�b!ڍ��	���k=�I��XnȈ�`.p2{�X���B2'È��4u�W�"�py/Wq�l�0��a\�~��:z*������|���K\�����lMP#��u`V�. �AF-;u
�SgQ�%��*������H7��D���  �>+@�� �N�����T�g�R�t=���9�8���K��ʵ�$�ϠI2P�L �����p�	ArDq�O��� �|��ｅ����w�Gڅ�>�.ڤ���p��������[� n���[� �Åw�tl-  ��,i�Q@���a$���c� �t�k=�qcq�9$� $i�� �=�X�Ǎ|�'>�) ���rW��\u�,zC����f�����Bן��m�;��z?C�G��Azݰ�y2�]G̻^@%?��g�Bbk@Lb���ꘪSm/c& ��V��V�V6�op >��
CA ��H������T۩*C��'U\�� ���9�bc�ٛ�����+d�;��dt��т0��� j��A
1~�ys�z)im���y��b ���0EM:��R
m��� �� ����F�n��
X���/��6g����C_�:;c t`9���d�Dv����$�;�:��:�w��(c��I2��|�a9�0q(��[b�9'e�r+b��������>�]I�����
t׶���pEv��.��`�@�z �L��4�9�����m���֨=�r�������8I<6�K4�G�{��Pe�^D� �t��*ië$  ���P���ߡ/�
�	�j��S^�- ���7���K�r  �7MؿU@ �5&���_�L��F�õ���s��1�CtE��a���b���X�>��y;q/�Бx*���׵r�A���@��M��͈d�@�"�UVE3#�<� �?w�-��j�^����F����p�m���%
�����'#�n�9d�a� �~�v��.��qB�m�@z�қ�F]���������J��H/�����(�����PQ  @��m���&k�0�'{#D�$Di �:���ŉ�n��q��T м 8��o��  ə0���v��6p���n��͕����tc�=�'�P
�a�
D)~����щ�}[q���wz->ʾ�>�Za�P+�>���Z|���wڊ3w�N�v�_�8T��ETD�(8���ϕ��du�A:�{�uw�zA�!���J�8�����%+�mE@���(�}Ђ$����p�zX	�j`'�U�A���>\3Q*�Q,3� �(�����{{p�-rϮ�\������HBv�� i���0�oI���������w�T��k�����4�8lB���x��#���=��fM��.�� F��1��y��#��>.��Ma��s�����g�1��#���v㘄x	R>��@��YB���;��s��`B� b���+��� �4��!��P� �Ce ��v�2'ү>� P�����ƻ��W'�L��  ܡ�u�H����  T�����il�c ���o��%Wi���M>�qҵrޞc|�֑uؐu,����k��8�T�� i/=[��% W_�����`��\g(�wh�FP���g�A[|UU�� #� ���^ЉI�� nç  tV}p����x�� d.@�5�r�9��q�?��'�� � @��j`�G�+wl��%z f`�N�d��:��%��}'NX  zPbQV���ƣg�Ծ�$��  �؁��hV2.2.�����Њ��ENղ������k�}�|�2�(�N�#P �׊��\oQ�4�u�?s��d.  X��R�� s5hh�Kx\�O�>�(1�X4�E�NA��[ag�V}|��z=G�-&�S{�� ��ZtD��A'd�� L���4�&m@�Y�$�B��ڕg��Z ���P;�ml�=��H�a��&��v^�H%�c�.� ��O�k @�1�I�M�;A/�m|픱0  ��e����{ˣg+���^���#�/�c`�ݫ�=�42B����,��Q��c>  @��ҙ��>��YD�'  =v�O���]_�Z  >��9|��ߊP�� ���L�0`���_p�}��V�` P��_�P��wTc z(��)�ń�Z��{6�%�8 :"�Q�-Ȉ�^ � D�󃣵��,�' �����}t��k�k�k% �ZW�~G�CA ��@C_+������l9 �I�j\cG}c @����t��s�Q��o����2��y� q��W �  B��hD"����@�&E�� � �$�o��&��V��,:�-��Z�"z���U���=k(v�,�H�3��j�����ɷ@r�\����;���/�ƾL+� `n�rp�?kx��#c�\yP���R�}n|��׋h����������[��f QM΢��5|�&U��4D��?�A) 8��ܒ?�ھC�+��Q�����  ���S�&��e�H��c�E��g�[_ ���]j�L_�6@�&�ͮ�m�x\��W��bC�����GICbL��W��K h�R� �~���:"��/e�\C@!���P�ăQ��A���XީO��3�6��>�x#k��p�l���w����&���٢x��� t�J���o   y�g@T\�9:	hDzh뷋�H�T'K\�	 ��S����� �|�r�YZ����B+�$�-��p{���{�[>U62I+@��R  ��2Hb��{,+Zx �����m���8�z�%��9�w�D�8 �N� �Ӹ"Í�h܎�Ǫ��
(����4�ʙUEy�@!<GI:�G�AWz���H՘��ɂBx M�u+��ߚ?�q��N���hNi ��!����Z���vG� 0� �p�'���;|o��e�͛H�J"�c��e9�=�އ�J��{���)����q�mG��\y˼�ԗ)���?UJ����:Z����L��@�D@@BZR���< 
�A�]���x5=�A�|��Ԓ��N�[P�����>7:�t�Kb&�R��)t
��" ���ޏP  �\�LXVS�c�#�%��ς��}���<�Ns�#?���$���=^V���)Be�m%_�ǋ���]���P�  .Z���@���	MK�J����0;���?��~F����m?/h��{�'@o@��Ađ-�,�S�?�ٟ ��t��0�6�ln&�=���Af�@
��������V�MKB���͔@
��~n����Rq��h�F�;X|�D��L-7ϗ�3F�`R�ϗ�rS�3`�	-� � ���7��jY 9��x�7���?d����_{����1;djP+${$`�N�% -ӊ�g��ޚ�6-�Z���jn&��*��U��3��w�aOQ?9XvI�&o�$K�}@զe������:nZ&a�
W��]��IG�?��[���/6O�y�|�r�:�?	�H�Y�Gw�&��bRC՛j)1� L4Lu�3ˆ�9J���ލ�@����	>�C���PD�C=��ٙ���@k'X�!�\-�w�e�������:��?	�J�*���v����N����DS鐲�������KqI�X�K�6����]���`�}P�a6�����-@����a�4�T,1�� ���[��/1Ļ�֫�ۭ��i�@��O��h�-8讐�Hm�������N�����ں��3h�wb���w�/�]�@��Q�L���.m�����` h�к0S�Zѩ9��� @2܅N
�����q��%4��x1�Z�����!��h�wR��������|�Ϊ�!V��~%-9q��343K9�2  ���:��Xt�
  � �E)���8��M6}P���n�A[���IE�[@-7y���1V�P�c�h�rP���E �nzK�sJ�!�6����.�)XeR� �>Aݛ�ڭ�N(�=^�m�B��,q��m�d�yX-k�҅/*d�-W =^+�
h}�QdW; 	, @��w.C�)�*�au`��p,q(���G�/IV��<�;�a4�	�9�� v�8Ɖ�ɨ-Z�eu�}�Pr<_�W3� L' @1;�4=d��,eN�p� 6%�]`���U賀��-��YU�v��~��e���������[��cl24佬}�+�7/�..gFAkC�Sv  @1SZv��J���@�%��@'+D����G8ý�ڭM���r���o?u����"~��?&�����7n���r��1,�� & 0�X%+3@`�aW;�P@m�j#�DvU` 2�0��^: B� (�"�͘P��4 B���D<�$;��b�jk��E�po�v����{r��-�o=�+.� ;��R8���1�^��}���5�B�I�� �TQ� 4�'�B&�,�� d�[��s%a��;�~�5S�����`˸`��jl���`P�`a.6Tcˤ�-�����RsB� ���K�=<CN�3�w��s����a����#H��`���o��_��g0���Гc'0t��9�G�(���D9�V�a�@k�Ȗ�X�p�R5Q��]�s\�L�
Y8l]
59���K�Kn{.e��O��`����T
���4�#�5�S� �a)�V#�5�� �Lq	��  M����
���"J��@�Rd�u)�>b����/���a[�½�����y�b �&#a�+.�D'@��)���	��DF���� �	q�7c$!�X�a�B
���4�V���n{\ʐ��aLf*b��HF ��XG"Y�� �G�%qЧ��"*]�>�{���5�� JԀ;�jI09T1��N�S�|�3Dh]�k�5b����;�힑ʈ��� SM��0���<ߡ���B�_5�R�ؗ~���<�e���O�ZO��3ע- �6�u�Y��&6�Ђ(���FO���4ocP�n�S|��b����&~P+�aX#B��ֈ�;����WF����C�!�Xl,���bQ�!	�~G�2�۞<�tX�@�_f�B7��	�J�)% �vB�%� @1)&S",��2��},��Hp�':��fv����벶����Pƶ�Iq��\,t������o���� =z�w��!��'B�G�x#>���Ur�%w&������K�#�u�1�ޢ��M��%@��~�XRѰ�op~�t �/ !S5S0  �P
�0]�	t6�	��+���z+Έ/��,��n�
�琭8�M�1���N@��x�b>�	=�����xy�!.�h��h�6�=���X~u�����h�G���&>��y�#6 �~�%�E�ŹiZB}�d  0e�b� 3�`B�EUt�Gc�˃��{ Y��ybq%d ��V�q�<(���YQ�,�'p".#υ��Y��}N�'��B�ɑ�� x�������Q����[�S3�pqB;��z�դt�ue]��g�|};7��$ �/��5>q}��ĭ�u������Q�'���`7��Vλr�P�Cc#�Dc#�w ��r#t���ǀ���O�b���pzE�T��5��FμD���PO\;���Bl����������K�8"v�#y!�Uyܸon�7����r�Q��{&.��۪ �	  �#�I
��ݶ�W��l���Ľ�G,�#�����u|\v�^��q����^�',*�̼()����X�"τ��CP}��bE��}r�%vJp:�Q�c%�u���،y�'�; m�
�,P�8��	ta6���g�6l��]��-|����O����<  �d*�jx����?���k���[��Gn �cB���nă���^)��~�Ư
LU��5�/3����z�dR, �D,�����^��p{IL5�5]v$_dX��E}=G�V�G,�����)�%���z����)�� ��Ζ�J	9O�,�!�>,u�}���z����KrQwudKs�;��]aX���@�+ɬ|�#;`���PujAќ���/2��`!�}�  �@o����1x��˟�ih{_>͟�i�#V��w`�h��  L���1XЧَ|�lG��V�Ќ� ��tx�%���4�+�'��C+��b�E�y[�Oڹ���sP­��^��y�-�Ȫ���%?*ƨż�x�N<*�����? �Q�Qt6��Ye b1�ӡ�u8uO
���>}�εG�[�������Z>tI0��XQ���%/7�a��~�N�(x�Jڈ��g<�b�� t�0켾�[Kx���׷��({�����z�Ba�D�(}��'qyt0�o!2�Ș�Ey��G,�� �?����9}vWι��ӌ���z<ѢeN��8�ZyZ��kk�����?�� il�!�Y�K�@���NGLp�k��9�>xZ�uP>�;�����uN/h��A��f��N* <��g�������ǯ|p�E.Ի�z��&�aA��Q[L;�I�j�={� � �@��� L!?����އ>�Fyq=�ob�x�����͏_�`��A���iN���u�y����A�ŧ��+j���e����y���O @�3���3EDI/�o��#rW�����j:-"2��@ �t|�A��?��������S ����;����D�cX8`�]� �`p�����ݻ7~  �=�  ��"^��m��#o�:j�Q^4�=�q�)px�֑���G�c��c<��������=v�1y�ڟ�Co|? �������'P7 ���D]E�	��d��>���rX���Kn;�"�c��먉��, nJ���m��C�?���,`�A^݅���wo�7��Pgo���{���`�'-�T�fM|dM�6���~YSZ�XyS 9��c~���%��+O�O�2lzݱ�-�yI�������xݘ;F� q{������� ��}�>x��M�n��s��W��	 ̤��@F�( �k�����#w}����A#� 0�a����BR C |���?u����|�D��g;L<�� 'd�K�y�L���7,�l�w�7ﲻvZo�ގg��|����J�'�l��B�Ϣ���������zG���!�+�k@R��}%i@
 b�w�z�� `fs��|���?�G�K��\����Om�E`o�%.=�Q���`��:r�/8��j�%o�{�%.}�l?��J�`~�+���/=6� ��b� P � ��wl�&�u׽��� ��p���?�'|�ETHX��./���;�x�3C�+w�wQ�;��������A�,�9��%��XR�o$:0��Xb �
n `�w���B���$:!�/{���/=�u� ��b��o^*.9�?!��G�?X��w��s��y��r���G��O Ƹ3(vs�i �����+3o-�o=:.�ܳ�������=��p���b�-v(�{f^4Y0�&F�*@3c�e=��o~����of��*�A���So��;T�N��x�+	@,�����1C�	B!�X_qMZM���^^�2����7l���{����O	p��	*��~���~��U��ƃ���%3�"Z��JJA�5J����c�hBf��

�]%i���	��VY��?� ���E✡$u�/�7|�2 𺷟�,! ���N_����1����=2Z��o�l;}���/v��S��[��Ҿ�xi_�ږ����ю~�   ����%S8�B3���m ��r����DQl�{�v   N���7�����RfG*��3 �"��Q�"D�ԟo�o�c�	�ྻ�8� e�����N; ��}ɭI� x��}����ם�V��ķ�ݳ[�!"�6  p3h�0@�4q����Y�9q(K!���bhdVH8{{������d���u6!��$8�p5�tᨩ��+  �q;� B+$����9Oh��8Mb��YN��ʋ���S�Dkڳ&3e�+uk4g9��-Jf��-�(B�!��lS̍<�����7  `��%�ln��� P w=L+S(ʖp�����_��ϗ���]�#$��
~j���!r������%�Ql�BO�3Y����� ��$�9�=��h�ދ˽G���S��c�w'�!��  �Ą�US#-�hb(� H<�Q�U���w=����+V��9ٛN@L��0�\aw������W\�ɯ?e
 %µ�d;�5  �nE��)XG���>:J��} �}��� �/c@
6 �5J�0U�M����'}�ď��o��}�;��]Zm{�  F���b�NW�`�Z�c�hd,�`�%�(��6��[#�T��I�co67��-|*9r� ���s ��^��ٯ�l�ȡt�
�����\@�#��3o 4��hl�j�NR  �-:�|��� j������O��  Ş `u����g��C��o|�=� �%t��/��-�-�s��b�N!��Ђ�_	$� U��A��"���Gk�V�;�h�]��h� ��F�_��U�B�§&�����t`}'����|�UP�
�@̉`���^�gd�d�q��NR�%��RP�0[��˵�r��S���/�����C�͖�
\E����#�����1�+Q��!�e �xR�[��ԥP�0�S�f�x��	 D�٪�^�����dv�r�>
�c�M�~s�����Ç����p�8�'���gYy�2 ��@�5�������7M:'  �����- �>��z#  ���|����J�5'�|�:�r���{������N�u��<���<J�d?� ����Кࡇ�" D3����(�ڝ���>�h��U��:����c���=���; �￉
�O3TP t�%e�nɬ�G�G@�&} �X1�K+  p��>��"�	ށ�%R9 Hv'u?~��x�9n��?���?��S!�^󄉕H(]Lj��1@kci8s-��Z� � @�zRO�~�H0��˰vgn��y R��{e�:������ ~m�� &���~s?�w���5m\y�za�rB��Rm]��R �٠hR��r���Y��d�@�#P��
�=�9& �d ��8�_���{/�����o��N�HX�@�D��Ť6�r��F�x�Xk�0V�r��A�2B�[p���T�JF^��(���c�ʝْڀ��h��ؙRD����a2�}�5�K������ & @Q${ &0j�,��.@qE�������>p�{,�'��O���� x<��9}�7>V������C1���/� j�V�<�Q�qblahi�0D�j[߲@GEU$	�I�d��̪�I
 ����sV?택��R[ܝ�Ec*����+�	���-��ho �tU h� 8�P �8�� �]z����?Z���[v<�e�_�Tڥv LG� �.W��f� h ��`�v�O ��>ZQ��)2�g�M-L��?�Ƌ�K-���&
$�R8��j�頳[( Yd�>f!r*+) �'��n�d������#v��-�v���p���tޞ@S&��Gh�Y5oZ+�#�I��~����l~�7���d6�l�6��(�s	�1F�������)>+�]2�Z��]�D��W˳��F]�w�����o ����̓oڿ2��]+�r�P��[�`�E�\{�y���J"N<�}�"������6\>Ĵ��uW���{�y4�U������A������Ci�����7��dR��[�2 p6 ����`c����x�nup�Rpe��f��H���V @�W�>�����h�6Vp����oO���, �a?��* �$�o�7o4B>�p����h�;�p+ ��d�v�߂�W:��B%;���K5hw�tl�0���`��@c�B��8���9ݑ�q�G ��h�Ňn�zj��2mH� u�.��Hc}�*�S'� �~G2r���Y��(,a��	;�z8Y���g@����oO�(S�@X��h �h�|��~}�`_�:;c0�b/���嶬!��R��r�����|��C�6U`���]�����ɏ3N7a�^ܶq<��~��g�~����;�fW�P�+P��p~�����.�
*��5|M��]��p�����a��?�Ͼ!��ڧ��I�[x��������H94���~=CtE��a��_L��d<G�l!��V�����ζ�ؾ���NGNő�����7`c��Ƭ�deo;  O>>�U �@��ލ�  �8�� \��SG��T�	�>�G��՝�C�3�� ��EoQ��@%�6<k����oOw�F���6�y�����-��/-���^�'�$���X� �1I��XJva�-�ҋs_Afgۗ��;}��oP�Ib};��+�SW�����c� �����{p�澻y�I@�*
|�6�fIB;�������m��8�e��>e�D�.��2�5�pV��ζ/.�2�=��+��ȩK���_��dv�W ��p�	�A��M#<���k �IӚ��n)���5S�"YD=}��+�Zo��W��=��I�O�;�=��mY���N��R�����"��� '�m1�i����-��q���<'00�`����[�(m ��Jլ�U �9�=)1���gf�bG�N֚�u��A�Aa���߈fz���@5��=q��K����wD{�<��sJ�s?���rli "Z�PZ�����ۜL��>�����+��
�Ħ�C��%�nc��� {�]�%��Z��p]@���߰��Hڙ-����p��'�ӞNϲ��������*�7h @ �7����Q���6�����(y9)�ud�C9� H��?����e[Z�&9K�E�\�'�kf�6�{+�
��'�ў���>���x��6`
|�����, e���_  `n&�"oC�	�1�6�f����@��S=� z���
�F[ݻI�wI�s?o�G>�8iЌ�Ђ$�� ( �������,��2/����d�ˏ%�5���l�� �qE( ���� P�/�&`jrU������{Sru��؅��Ps�����Me��� 1�ҹ�d�N��MC��g�j�����aJ�:F�G��Z�Ȗ��"�6�9D6Y� ��muo��$>��A|�7j�vHP}�J���I�>fOY��B^��7�DЪFI ��aF����/�L� @:�z�� Z4�.N�qt+���ngZ>"���L'�Ys>���a�)@�n�0�� r]`� ��0��wI�s?��	h���5�u��"@S�	�2؋��w \���ҥ�5' �}�����
��p ���{Ϟ@U#) L����cWٖ ��רn���
�5�SI����m��=�yM�J�J{{���U���R�M;IQ��]���!���5
�諾 @�����i$�{\��ǿh�X  �z��TOf#rhf@v3V]Ò6�m���@�@�5�	����Dg������c:�&��&����y觿 �۾ �q�*n���=,��Uo഻�ƙ#���3G
����u.X� �^�� M �A@��D�K�f �������\�	�� ���f�\���it%����m�.�c�� 0/�;��VM/�vW�����TI+�]��6� ��{�ӧ���O��m0����Uy`֞<]���������;����ݽN���{�����_���y���.����f?��Y� �"�1��icvxie��x���_�o��&����OL��'�  Q�  ����W����n�Kz�lr�cߩ��>�mx�1���m�RhDi �����k���_�S�+&���$�Ə�͈�}�{��~�GJ�0�Sv��� �������BW�����W�����_����l��H��*�ր5�(�X��q2�	�����J%w�u�(+�U�퇇_�T���n=P*�Q�{�oZ�����u��㟾��=��_B�/��W0�V/��b���������75��w�b���_:��x����]�N�\c�j���� ���g���#�$4\a�٨���/�
����	�H hecR�qZٸ"������oc@��<�@����l ��x:3x�xR���,N|��4�;���?#fq�k��;0 ��/�ÿ��&	@�F�wN$��/� ^"�܊��ڜ�B��	�i@�}o�~� ��F66������|�!<a�
��,6�@��H�V���w������T�{��Z�i��4'����}�Aaݹ5~&��~3����͘�r�u ��D�߆ <�4Ӵ1�5jMx!�`5FP�a�aM!x���`���l���d�~S���~��Hw���_�E���oS2����fa��cb�f�!P����P��ڏ:6���o����������:��N�8�eO�  h�0m;]�=�W�7E�^����P)	�N�������Q����`��EicԦ�X@��)�`� �M7�=�����o�����>�K=薀8
-���G{
P� ��U  ��9���v�>  x�z �N���~K��{������mf��
`��� ��,N{ ����  �'� -�μ췓�{wr��o�a=��/�1;��E�ک�l����;�����v�3Z�o����I"�lk�6�uR���Nn6�:R*��Y� ���d3g�v}u���wP$���!�X��y��f./�������M��8��-�[��q!S���~۞�d;�2f�
 x�9�@q'� O��nL(�Z$���QߎZ�y��^~�WGD����/yl�����3�����r��d9)RN���"5[������  ^���w~p��y�٬��(m8[Λ�w��+�Հ7�Ü�d�\$;8� ��u��|��߶R[�̈�Ԯ���8���)�����4&ff�O����i ʛ0��>(�g��wW������ˍ�׫���,$����7� `8 �
t�c2���^B߻��ۉ�n$Λ��V,5ޞ� "4 ��9��_�?
C����,��lN��=�Nk�mrq��&KnqeL�ͨ�G<�M����62�`6�ߐ�ؓ�������M����v�$Λ����[�A� @}?�X�9_t~؜��(�S���i�iɥ�i$2��t;�~��٢�" �BF�u�O0&'�G>��w���K�@H�f��BKg�s6@gk����)�oI�S"�T@��M$�>K���d7���r��g��wwǡ�a�7]�%��_���I4�FDO �pLa��-��� �R:�� ��4\�]f�J��M�� ==��S^`y�꣣���5[���N̗�X��57^EM��\.�^�vMu/�\��l�;�C���x�u{#��!��o
޽��1�)���cs��x�r�c6�;n�:�1
��k�\�  �8��h�(Ա\ 0@���P`��ȵ��I�6�q��U���ky�,  Ϭ$��ܱC ����'��N=�&�����a�� �TN� �)p�lj���"k �2s̗u�|TC$�d.E�"֒z=n�C��   �+A��ש�>��DH�Rd-b���|j��'w%��~S���~���Xb���	Ԭ�4Cp-;?rߏ�ǋk��< �im�>:n���EN����)��#y�2ק�c�iy	(��l�T���^X^�I:�%8�޼;w����4�����w��;|[Z�&�\�2�&��q-;���j>3z���� PY ���L��h֒�����h�H��<s��2��K��  ������w��{	?�y#ⷂƭD~����� �!������2x ��g��Ь��ֳ�yc� �̲���}z쾘�?l�& �f�=s�RX^��s����:�ӭ�/���h��9tp�]��3ַ��;P͍,^w	��V���<5ɜ�έ��yrTY^����<�wgc�s�X!�#@LP+������)�J����X.��ܺ*�rO}*s�C%�26�Q��J��NX��pn�R��� 1�m4�u,��N(	��o��7U���0��/Zt�@��5���{j|�,L��$������r#��wg�t��������p���<-���Y��8�<E��s���� ��5~��g�Ӎq��;G� �������X� �� ��U �X�� ����+��Ms 8�,�!�(@�ek��� �����Y(�v���  ����TLrto4�w4 ��97A��:a��z Teu!�����E^��w_�{Q���=��QfK�L����F-3 � �M �C^���Z����w���Y�6ۯ�V \~��D��� ���������fK�˿-���;G�Q�w ��h�.  �Ԯ�g-�Ģ��-�/E(Ţ�;��{�-Ţq�ʐ���c2t�7�5�E(Ţ���3���o�#�;���ݯ��꥗<���ar �c� dX��	��8�@ľ��W�����P�b�����������=;PG����)$���L��/�� i6�t�	��+�
�K�X�֮�ِ�
�F�N>����hw����~*F^:v��Εߌ$���YydH�N}�h�d��$b:������t�7 ���~����~���1P1��2�:�`ɫhdh���T xsi;y�  �x�%b�^�8��=/d<G�I�z|G�<����$���5t��na�Xg�ER�:�:h��(km�f���r��:;Gz�E@KǕGB?�_���n����tl\��^!�����Ǒ3EgR�EY�����Aj-� U�c��|���75���g�?�t	 K~+Z���V�g9dt &"�LB��lX���;:"l���?���Th�B�/�ޓ�!�RS���-�Z}�/
��f7)ǵ��k9pʊ6��ѳk}�Vf)	)�v��~)s��.q��j\*FZ:��Qe}��GR�MTt&M�񞳓�	�.v�ф����!��C�~����~%��@ ѹ���<���� �$�c�Q���C�M~��NDB�(�HO�RAH�^W�6 f�}c�Z~�B�A��IG38�z�	 �r�8�h�6E��E��t\A�:�m�p���[Q:b�)/=�~k����w���@�2�  ��$xn%�"�� �~+��?7? �$%�}Dc������$�  H"g�:����x��a�R��xǫ4��Y�n��hr��( ���`�����mQ��[+텺��ޠ���S�u� � Z�Vh̖x8C��� gf�A� P�����;�|bW��c�=4:��8�|dWg�1_P�xw{|z�$
�����?p�0H:��1s�CiH���dyOi���}|�D�����X�Y!�' �����;�[��w`� :���{����AOPH�Lv�1,/����re�Sb�8+��8�ej%��AF��f���
� �����ьû3r
p�/��	�x�f;@&2�2q�VF�G?A>d�t<l\�v�b�-�j,=Q�� Ō�'�) �R���5�	H� �X��V��L%c��`�|h�&��,M�j�5�#��V� Z�w�r���P���?��x��P��=�O�
����H�E��t���k `���#� 8)N��F3�������
 �  *	^���|���@y�o����{�VQ�^��B	�B�c`p3�����@�hg=�'2#F)�I8��/� ̦O�������HT A:V�g�6m���8|z�W�v �����}����i�������=<ګ� ��-@:'x��S�Dk�t陨Ms�n�� �`���	3�F(`����pa�{��@h��l�9@��e�њw�: �	�!#b���{u���&ݎ��{�(M�=�1���4�z� W08*v� ���XL� ��p�A�z���LE�ܬ�����Vi� �)�m���@CT"�@2�
�^l�����kŊ�w
�;_w��) ��䠀�ԇ�A�p/��c<v1���R����A"Ѕá���a��V���a~������ �Y�)��	����߰ �&T�AR���"�4|�){z�boj�w�~e�����u�`r��Ku�-�Cm�f��
��OG�u�<�E$�	{a���"��3lENq����  0!��.��� Á   3�ϺM�$]�����\@�pk�%Bf��w\�tEW����<��͛?Z' �q ��\~�M�ޗ�s�;��U�����~d�m~d�m�����
3�@�}7���q�,
{�c�P�mv!�փ9a;$�6 ap� �y���ZUf�/�eH��Uf���ۆ� n�Ф�\�֖��jge�>�~k��t�kޱ�A��,h��̠�LC�z����� I�j�0�߁��Ц�	@zAc�A�� o ��;jU�Y�P�	��Bf�w\�� ��_�弁6�wh��k�����c��Q�39*��B/� �ԽB�j�f�zg>��*1* q��d�C�C"��0jr�|�H�F�c�'���tV&��n�^�V�܀p�6 �}�@@f w�#:�n#�nh�v�n �"�<�qS`r ����D��] �c���P��C�ioϟ��p���誙A�	 �ch8DG�`�?���kBB~��cn^Kp������ �"�X��M��TB+Q+HhA��#���/�L �0�F@͚��໤4����h6�c����۰����GK� �O%ϔ�+l�߿ٝ�hFRz F�O��g ���0h2m������l,�͋f�bOH�`�X�d^ 8E��ޠ� ��To��y{�J��D��/�$�4�CL��q[�W��K�I����Z�4��F0<�S� ���k:����$=w�ע)�s���q�E�,�F�|*e���~�5V�d��q�������y�	F�5��p6�  v�&é��tP���l, H�&o0
m:�j �y�B�>o� �xХ�`��4� �}�?:��1�)��<�J<��u �W���}�B3�F+#e���kN%`��������3�8��� cq�[��-@�5rx-�q�>�������hP_Յ�s�C�t:�� �B$2��WǡO&!��NI �CD� @hDd��dX��8 `(�7@���J��O� @�f�^�c]�'-��欶[��<�X�/���})⿻��W��G�����`�w{7�6g,�Z�9#s:��F[�_��R����G߻�ٵl&ɸ���
��0�]r*��K��w5��1#���9�bn��$����&Ce:ћ�s��:�t�S}�H��E�؀�9�y�����~, �
��q >�@  �V �����@��y� j� �I�L�<�F�J-���� @_w����*_��=l$��^<����B_w{,x{�/tUMH��hҠc>9���&�7f�	��^��T����h+�}��;��"�k�
 e�Զ `[���FE���P�~��@L�����[N?	��Pk�ܼ ������g^ ��(���@  >v�n���@��rX�p^��n؀�t�w#o� (DLh����R� �qEh �f�n�X>7��&d�IЂ��-��*D[7%&�?th>j2@���{w{9)2l;TUʔ��9�#���y	FM >z�;���x���(���s  �[�<  ʎ�>h ��z�I  �j�u^W��]�&��w��(Q���YE[ v�LL0�e  �v�g5	n( 
��iD�B7!3��&	 0�MR@@O��� S�I�fyt�6�#���{w7[��4C4�I�fF#ۢ��x�A������@<H�R���s��- >�e��z�;�>@yy��f�t}]$;��o��   �Y%ë���T �������|�[��h�> �g͆�������X�C��8����L���bE������`�c�ʀ�� ;� ���b�L�yG$�%i�x�0�6�	I��a�Q�5g(`�Nu#�@��o���X�䱿4������s��`�đ�}����Q��]S<���ߴh���AD-���J�c��Kuh�h�a�p�� {H/͉����έ�b�@	 �DFWS������'�;��|��@��8@i�81�&"��k�����L+�F.հ=� ��;��T�׎�TD������̔ W�J"c �v}��G9�	X����h5���:Y[��a������=q ��ȟ{Af�8�EN�g��;=���
ɪ��`�ED����W�ѐe&��5�(�p�3CFc}�^v�x�"��{H)"D�2t ��� ��҄-��Y��&��'�NOu���,L�݉�u^_w*��u�Ll%����]��NEM�;�&bF�艸�L<s�	I����==���0o��1E�}���]��`��j.�$ڦ7e�� ��+"�*��m��;�b ���g\�n:"�Wľ��Zh�l�=Y����'���Z	p� ��?=�9C�Vk���{۶\]R�><]�A':�h��~\4St���Y��S��s������n���\� ��x�@@�T�% �?��^ ���xHl$�����0��޽��gԆ4���w�~Y.�|�+'�<��.�|��ϼ��W��\r��!K��,�^�,l/��O_��_��OWa��� X1�S5��c�Mş��{�����W?o��3�7��qɻ\��y�<�y��Թ��Ni�>�ջo�� �ELԨ9��� ^@��;hI"�u� ��	@0o+<` ��wߣ���~���Ouo�� �]�� ��\���$���𓙳V&I;{���=��D'��K9�A�w����xd6 � lca^�|��
-��m��6�����{42���Ԯ�QUQ)�S�{�<$ŒL�sSM	^��� �f�# �?}������y��k~� ��C/頙A����a��������� �8���yӹ~an���߰�4p�)�G �	3��f����+p!:b��y�Q�#� ���)���}�K��=���F�m���N߳�\�� �������R��'���� ��p��v�qM�1�����6Ke�����
	��ϛ_�Xy�L��W:��	�}�"��IK@#�e>��k�V�	6= ��`
mLr}�^���?7TA�h��}_ܯ��R�W\��O7��b����/��b��3 �֐��oͱ;����ƫ^d�B^��t!���� ��  ���'�v"��Sd6&�6f7��V6ۍ�_+x��j�������~a~���k�-Q ?<�E �}��>����t��U ��h� � � <u�3R�n���A6c�5��z�M��Su��pG����b��l`v���)�潃ǻ�C�sk�w�S9��<?`�<~����O��T^N����������~˭��W�ְ!aX��{Yx>�� �+�P+�s�*b���~��x׿�^CF��+���j  ��(��(c�>w��Җ��AZ����@�c�z�P��u�uC�y��=��v�����ǭW1��^���kK+Q�����'c�CO��<Ff�6��`��5���9~��|�A�_���뫅*��?>�?H_ѯ����� ��tsB��R�����<��5lH��{��N<Y<a�
��4h��t�M�0Fo*��+���@`����a.�ω��*�/�C�~�ӑ��^��")~C9Z"�Hm���Kk� ���bI$���|y�J��ؠm8 (k������^������d����j��0èÚB$�T�/�� ���q߿�^ ��7-p��gdʳ��~��+6�\[��w�;2>n��e9b$  |ui}mi%��  ��:�KS��|0OfQWz⌗=It64��^����"
  ࿼�����t!o�^  ��{�QP���`'  Fm�{HۧhVS���  �n;��V �;�����W"x��#j�ˈ!��U  ��9��Yi;�x�z�8��� �v?u�J��W�H�&�չ,@x==� �7�����b ��t/����/�_E�AB~�,ڮ�'~�x��e_"��'^�f��v��'~�p�ƐiI�)���   ޠʎ  �������D� �������F�ֵՋ'Wv�{_[�����}��+v����:�\Y΢�ry��]s%�kO Fm�6@@	}A�N+�0�� ���¯.�L䵷��.���� ��(�~����l����ŌDzgu���p��v_]��J�И(%�3�C��= x�ġ|�� �u )�0��������k�D�x׽���Ya7pf�Xi�w�1�@���34@����_��������`> �BZ� Pބ	���%|����H���g��{�z��-|D	�v0�	�����
o#�Y]�����(1��P�U��� @,x3	 ���2�k
�Sբ�G�6e   ꎌ=�OO�i���U˺�(��6 Y?F�הּ��H�wV�(�vwqY���p�d /ͣO�k?~C<�����bO�^
 �$@q�I����}.C���V5Ke�>(����뽭ՁA��E"��Bg}Ć� ��ړy��05��L��ڵ ���
�C7\ʘ.�i����n���thw�b#�9 ���I��Mza5� @� ������T(�f�d;�n���4�"������(�  / �e��h�! i�5yb�YEf���a?�	'�  ,8!�� H�e.2* �6h���H��*�ŷg틏�v�����87��_(����q���/�ȯ������X����^��a���y����|���#�Q����r�.�yr����u���8uxcԔX^����hoE��r�6��S��e-��v��W��=Ƹ�C����T:���?�Y�����r��k���`����Ǎ�o���m�?�|�UY  �Y=ұ2A;t�`L}tl>w(��9q�Z<|9� �1������r-�� �G����r������ج�Xt=t-�\�q����'��N=��=�F[I:�U�0`�b��  �#�������^   ���̫ʺ ���R;?>TY ��{��S�"���kI�7W�n�薕קn��.B�� ���|j�����% LZ3}��� �T�^�7]��������~��~��[�>p׵x�5�J3����_rR���">������?���|U�@"�u.��7=(�~յ��K�w��	 �(�4 T �ǋk��<�ǁ��g9u��B�$�6�!�s�%'r-�r���V>��cg}�ur��K"F/n �o�� �� E�U٧��[6�K��'�ח  өx����3�H!�!�4>N��u��U]  ��̱#ש߽�?q�S�C�;r��?9h��򋐗�7����~1���S>������_�O^H$$�*���� �X�gF��V$Y[|D�[R+:�'��ό��94t���qǴ��R��K( K�2������evck��w�O|�!���/=�K��T�=q[�<�u�8�q����,�{-�zQ[gr��xꝙ�*�����G�Z��|	�NX��pn�R�XPb��hX�X�Y�P�H���GGs#��]By����`OM2'�sk}l��E�W.*�3����X��1�F��@4
�����X�z��n������� ��q:qk���x��G ~. *DCOu�w�o���tb�;�݂��6��$�ݝ����x�@�M�����ڃ��P  x�ޜ�-���F�zG3 ���;�M 9VRw�Z���Z���l4�t,�g ���6 <���ANO!$+��Ms 8�,�!�x@x����G ��FV�Gx�u�Lsz�N���7 ����$K=@y�*ણ�k�l&O�  �߯����qH'�����^$�i���G��!�~�x����t+���gBn��+9p&���   p���9^,z� �f����Z��E�v	  ��v�?�h�,z���A�R����An�'�z��ztk������=��N��_u�7e���:'��9Ӌ�}�����U]!$&Q�?�a�  (L?{p
�]`�.�����aB}���Ĥ]i����tz;��Ej�W���z����� 7�>�' �rm��oNG57 b�Utv�=ȕoE"h�NV�"?F��ki�X78W'��nX��@���k-Wl�<�F�]+�!IС�X�\=����]b�nB/  @�\�DG7 �LY���X�ԉ;t��o�?�����p�7�}�����?�Zq���g;�>  �V���{���t ۴m�t?���H`���cǭ���qa����6��u.�[�uz|���%<��������D�綬�KiO"����<UD�g�8�\y�ߟkO�M��y~-��Aj-� ��[�m��Q��02�@m��g���8�#/��\y$����o�v;���Y��:�tee��Q�g~��z�)H`�d2�2�/;��l�<� t´;�U >R���=y�s�e,z!<��%/�~�K�__2��0>��{K��nϲ�� � ե�ޛ�WA�*{�X�+�=6~���4�$�p�]ή���	�.v��D.�7�ENY�,:?zv���,%!E����/e�|��%.]�k#��������>ޣ7/3iE��cZ�Q��y�@"�ϷP��<�!�։�ndu��� �����"���F���OP$.�^���Ǜ��x�K}�o)�B*��s[�^�N�?�� ��F�'�rX�F�\�Q'h �2���`�A(�N@�ʝT��q �V8�qCEP:���=���jc��� @�{U�Hd���>xE& Hx\��c�*1��t�Mqп��	R�v�?��7����c�?�Գ��bo�ķ����]RKb�8 RaP �4ߓ� @zz��"<���_�P��Ƞ=Yz�h3 4��T&���C�:��3��g �Ó[*Lۘ�����TE���z�sO����`р:<"��r��(L��9�5`�5#G0o�G�x9 ���5�PYX�������啫���VZ�Կ-ӟ�ݍ=�ͩ@�ُ�E!j���Н�
:4���k��p�C(M 	 @=<�h�W?0�&��A��� iсRsj<p=Hx[����D�3�#s���   ��(�rAE�:���ܡ���P�}[O��+E���p��	���'�Aݎ��^����~��ڥ%c;KX����`��?7W� ���Fe�w�H(�� �΢A��k� r@tlt>�i����� �-�/��-PH��&Z��"?��O�j���S].@�C�n�_ �&��/�?�K T�4�5  �	�;4C�{l}dN9w�	 ��yS-'u�z'��J��y��iw�P�h����Z8�D���T�?3 @�� 4S6�� `�#�c:� ��Ы�MD��R3��+�
�����ʤ�h@�2I@+#|��*����3����Gϧ��_I��w{c�)o�<�s���W6|�ڧ  $�D)ֲ�ץg�9�c#癐Bg"E��j�q Paq
�ȥ`BE�EP@�N ��#c� ���r�X�Y:+�|��<[�~w臐8+� @e[eT̨���ę� �! �P���v��I8"�I[3>��E걀.Y  ����F�1��[��������Y��[�B�H��������8JM'�^��鲐���Zf���2�9�9{R��~;:�W:��*�ҙ=+,�'����,8���!Kl��3�K�� �}Pn9ɦ���h2�� @���	@1�l#t�B�)�#�8Jl(��8�6@ی�V�t�c�f�h��?�����Xl"��2  �}�,�@$� B_�3�
v�!�n':o����i��~K+*k�o�7W�9�t '���X��]�=�`��t�l�,�*s"�RZb6���]^d��< kG�UhAkh�a�U���T�ۉ�����>�T'{��0g 	n�#,@���'�� �|A%: �֩����%�l�ͧw��|z�o>��W�b��6�0!Җ�A#@7:Ì
Osrz�&tނ�$�����&m�:+<��U�2��+ /�0�����1]�@c�ՏnE)��Z ��9�r�_��>��>����H����y�<�Zs�\r���7��=�����G�|���C�쑦��:���9
�[3�k�oX�I�����
��{�K�����$��{?K�'��O��31M����(I��̏$%���5�	��H�jՄ�Ȁ����:o���xޠAf�,�}����\�cNm�I��� rk�c`�<1.�|�U�D|ϟ�T�����]�Y-�!i��'-K#MXO+SR�9��g�������6��>�!J]S�N��5�$i3�n`^C���h$��m�6���Y�0�Ap�8�:W�_qu5��W}t���� @ ��������������Q@�#�A 2EhN�N���P_Ip2+�����Y�R���.2� �� �đ���O�+����9ѫ_�N��M�c�r4��w1�?�܆����:�[F.q� ɶ�h�	���	�������0E& �  #l  h�9Ԇ'm5���md��X�X��"��]�	��C44�v��s5��!`�z.�T�e�f��j�ĥ�W�@�蠳K:|B�O=�BL:'p�ԛAj� �@	���� �Ig�҇> � �d0_"���h�a�
H�h�)����K ��"��8|A  Ҷi���C�-��Z����Qp�q�!G�х0��?����.�p�seaU��3�nO|����˯�1�|y����n�<�1�$I���� ,6�1d��\��:Xe��o�"�  �t�	�i��� *�{5���Ac �"B�@)�"��!��i5�}��>㠻�Xf0�=4���xr��!
zd!%	-�����_���Z���j��� .� 2d�v��
���� � �Ar�O<��Y��8�)��#9
����}4��`&�G�|�[O���h�p	%����������Ѕ"�Cb=1�>�	���<K)��-�;~����� ��"J (qϡ&�#�Dl�H�l��I'q�;pM�9v{��5�~[�}Vb	�� y�������  �?���W3��8����C��	v�@��ت#>[�(8�0s)p��  �1�(��c3̂����(B�{�O��S�
|(�w�w���?��qP�����$�e�]�fcX���y��@)��L�r�׺�����|G��c�-�}E_I� E-"Z (���2��N  �^��ֆ��� �/~������[�>��o1:��>𿤠�M��Dx�保Z  �Q�Fvg6?kn�Zh��j7� [��|��f^������/�Go?	� ��Q1+R��2��C����@����O��o�mX�,<��1�ӄq�!�ڣuq ���7M���S��]Tzg�����6�$�xO�E��c=4�Z�G��Mu��g>֟�¯��Ȫ��>�l@�Y(t�E    �X��ɡ������O~& �X�0A�	����,; �{�\  Hh��
�pk}d.9�]@j��Ƞ��������G��������������~=u~�;^����,�ȝb�.	[}�췇�����C�V	)�p�P��h���5}M}?����8�XW"�1N��?�}��8@�P(����
���<Ca����{0:f?�>o��8$����I37��&�z�.�T ��|�?�׾�?���*j�� %O�xj 2]��@`H�/#���Њ�}����r��N%B�A����4 `��WA~��~  � @����  ��[Ǐ��"��  �a&pt�+~p�v؋��
8�(�P)�*��4�F� �JOߛnw>.��m(�t��λ5͞�>��V?���K �&ή���\%Z�� � ��g��6Vh�lNq[�K�����"���X�bo���~W{��9��	�A	���Nc#qHot�+Ќ�O�K��?Z��_�7?���/<���/��v�ve ڪ�D�S�����yZw�2<�H�ʔ0�D&�v�ɿ�����P��
b*�y���mfKR�����\��=LcT=�F�I��9�&����.<�Y&VXC��E.l�N�ve�1W߅����S�#ӑ�$�X�f'�eX`�!Ŧ� ,Blbp��n���C�L��)��۞�����=�S�֘pޓ�;� ���9�����#��XhH�-/�WO� צ88S�ɰ 0i9� �D P0�@����0BV�EԜ�+�C��T�7�Q��{p3#d��� �j�Qb�h4F�Y��Ty���F�d�mD��-�!�Eı�ٞ��,ZjF��QI���j��β���d% 4��>�D#�b.H�56a� &?v�n5r� � ~�����ck�$A�(��%}M�#��$��;LA5	T��YL�8��n�� ���ݜ��D���`���� ��[�wUTȾ��_$� ~�o�$b���H�L�R`����c/2����;�&#����H��� x��_�͟�:1��I�(��^�,�Ie�n�A:{�'��K�O���@�w0�׻��T����4g�q��As\u��YHYį��P&5�[���[Z��Kb�уgU��m`�����~I;��kŝ�7�&x��
"RA�H3[ω� 4S4�?i/���(��$�!�I�;������w��O|�eZg�����ɉ��!�,-��wi%I�V�ce�����D�w~�7���iL����/b�y'`�>�i�6H�&���C#^�����&g%���$�)BC#��m��y�;��M���m��üm�7�S+���߽��� �e��-7���o�:P�h�5���<��U��5;psK���g�\NĒ��_-�?5��h��YU7�0ω\�uElh��'ht :�9�O D�4�I��H� d�4{p�tJ��
����U�o�K�Wh)tR��E k�S�	�%W�
	"4��`o)o`E�;�ݶb+&��J/3���C�1c2/��^�n�t&���<Dn��)x��]�t�d>� nn٪��9����������� � `��;Y@���l�H$�����	4�=����6h:���*�|'KǸ���^擷�QC�� ��o��G��-o���o|�)�����e��/Ԑ 	J���W|�o��/�������*\�Q#ƻ�eJ�;��U�*G�\˿z}���� K>.l/=�D�_���ء  ���������\����=�Q�  >�ט��I5ف�dm�;c�#����?���A7��Iw���4�|�H[`&�" p������u�g�+t@Q���W:O4p�$������@�p#Q ���>�Os�!m���;��OK���e
���W��O�\��k�������?W-�?���8o�<���r�C_������}�����=�Q�;*�\��?����#ױ#���k��E%l�c2/[� �-d-d�u�\7�� ����L�	 4��]�0��U"��  ?vXyЛ���������
 � |��lN ��3�"o�ų� h< p
x�U���}B"��@Ԁ�yA:S�aM�$k�p�3q�ickm�\��1����_���Eq�*�����ѓ�]}�)�������䇿��~=m�'�y����< D���z}:�����nEgRh� A"#(� Fŀ�8��K��<�;x�N�׫��k粁��D��AX��-� 4��Іw@����>] ���ǀ�H6ɦ�63w�5�������g� ��= �	��"+ $A�陀���� �x#�A�<�3H��ˌ���������(�q��� ����E���������k��X�苄NE>�mTFxW?Qk�tY~*@�_�p�P����E�k/>��^|V����>Cc[��6?v�,P���|�4A��y$@����.�= ����@al��f�m�����* D[���s��t}� ���]¤��Y�HW�!����>_��=zD��%́���Kr��}!���C��)�2�2bD�� �f v������ �|��kr�Ό�;x�)�a�4�h���C3  6?v��ל @�&���~�ߺ`�R�_���J�;	������,i�qI�\�zxI���L��I�����DLYsL� �*���q�%&-/ 3E\��sz<�ر5Ncg]�H����_��n�Y�~���7��r�U���ݾj����Ҹfm]���c��� ;xV��x�+|��:'W�iRD>Q��H �~�&�$4!ވ!/Bd��_���I�dH^L���/^@jO�~�h�� �A��o�Ц@�ڪ�\�.!D�.��h����/������S����uj�m������Z��h4�M����ţ��`��ج�w���"1��<�]�����<~���������9�|�����
;Bk�O�	-� !a�%���� 	 d� *$4�:��}����] �@��_dfE� @D�����0[xrJ�B:4��KNZJ�  �J�%����P,�9x����� A����0�����`������Vz�����w�r�$.A������^ �������w}�p9h�h ��pIOJ����^�*QU( b� �;z�?�.��p�+	�v����*S`���&����6��	��|if�����h��HC"��P�t1��o���E՛Y����H�q���I
���+�G��!F���������?�A��>�|�Ә'���|�E�hҵ��VMf�:{Sy��sP �bg��ϾS�k�������/"�AZ5�DV(pd�m�����v����L���P����܀V�E+cA�!���7��L7���ߵ(C@}��O}>���_�=FI|F%��������éP'���[~��@�
o>�E[MZ� ��Hh2�n�lNgޫ	��}���3�Z!8�]�����4�,c/�:h�	�X���"�6����]v}.@�hE���З��n~+���2��[���7}���Z�O��K�Z��$�P�Y��I����
 ^K��J煃�?����˗~Ŝ���m0��� n��*���n�) oN��  �G���~o'�*<Efc���icvxie��x���7��&j O�̋��ش�] ��~��	 �Kv� ��Aޮ�eu r�� ���9��W@�O~�/y��� �m<��m ��K�����E�s��� ��_�L�x�������j �o��|�mLq  g[2(�8��`�[+�=��;,$ԀcSs�L@�8�l誕w@��d!��cӝ(yۡa�m����-đ�5)���}i������'h�R$�'����Du����]7mӒ�;��P�����׭��r��
j��y�#(�h�.�i�<n�t�\=�� X�h���87��"0��I��?x۟~�5 �\Ev�~ �"$P�O���3�7 ?��?F����=�y���8H U��� �7�����8��_��&��@+W�<&��I� `�����S�֑�27 �8�d!�7���s5��I=�`��ti-$��Ѽ�2�� (��yk2�U<@oxW(MJ�P����`quQ'`��Ck�����(�)'�<f @��x�,X��12R-Oc��1�������ˮ%�?�6 �7�sDi���SJ4���K�}�oTo��/�# |��ރb�|��h/9x �g�/�$c��0��T	��Y���wӀJ���Uo3�{K�74czc�6��`���t#���@���T���Xec���
���6ÄQȐ!C�n�����ڏ=%6f�`9��
Og����_��S���m��îTJ4hIM$]a����Ӏ��:)��,�K?�@�j�5x��#�a��4�$���M�����Ӑ��j t+�h�Y @��h�	�l  R�>�3�KKB�FF��¢�\Cr��1�0�ࡓH��[�r����^��������ဠ�Q h����=@a�Q�5�Hੂ_�M/ ��>Пy�oJ�m���S/y3q���{=��  ` &x�_~�!"B��惟�g��S��������5 ~?ҜZ  W͌�� ��[���t�D��f4���C  ����� �����;BS��m� P�:&��n�e��'��ɡ%eoh������ѽ�s�N.�7��4{��>Rr(�x]�KeU�!��a3��`<�  �Y^�`8`�(V�3^�$L  �&�b���@�  D ��冮��ڱu�w�/��~��l�{1�� �no	xk  hV�, ��w��r:bh��R�^�E�� ��� ��/����|�?���S�&�lK��[~�W7@Zq^��s���o9���8�[s����.�u  f,3��x�x�sعz4��~�����O�� �t���m��M���\v��9�_��������d  ����\��K�6z��9|n��.�?y� @ZJ���4��1#��V?���d��)� p�E9�/�x�x��Eno$llz;�	 �Q�����_����  6�v�6O9փ�&���}ˡ@*��� �<�r|j����?t�5y�ňf�����
H��Vx�?�@*�tv�/���>�w�{�� �� <��19h4LM���h�v��hC��|���~� |z>߼���~���_ؕ@��ܫ⋷��;���O_���{��~�U�o���s�����?���~����ܞ	�޹z��W�|�7������t\��� ���&  �g�#4>T ��q����p<x=�s���޷� ��d�uW�������{U ��ʽL����Co�9	  %��������Ϫ�~���A��{�;@�6A�h@�Ʒ�td�|����g>'��~�[�������~��-�ݼ-���ܫ�זW�_��B��d�Y˫>:r��d �R9�)o.& ��I��A����o�k��H�dUfX�  �R��Y�����~b�޵ed�0���s/��G������f�Ո�Jw���}�|�S�g���~����A��&��ߧ�]�����8���?fba��
pke�e�
p�q�f��6��_[�0.�	�ۿ���Ҙ�v��I�0���֮br�!��+��L����bL���2��!o��n��C�c,�.1=(�v&&'��u 	��2r�eG  z�Ig���N�S }�$HBD+c�  f�dX�E�Wh�LD�m/S��"0� �Y���`�l7X�  I��וl��+���2B���V��~��l8[	I!����`��ar�6��c0�Ӄ8�nS`��)4`�=��40=�9����٣G�xe�a~y�@	}ACJ#.�0�� 7o���&�h����].౳�koib)͈����s/� @_ �&��h�5���!����6�vs��`n. l>��l����*'E�d�p�E~&�����*�M�dQ�lR&��lcis��0եUYX����RYXK�v{�ě}`���~�4_������Jk;͗�7&/P���� �:��R�R�9�Zd �Ue��85q�,'�����!�`�N��Vb �
S�7�j�:~���#m\ݜ��us5P[�|\���$;8V1ȭ�����h��d�~[��if4#�gޛl���[�ɖ�����&[:|}Uaޛl��M���+\ij���dK���9;���?�h�-��0!l"��'{쬏| �� Һ��&L �F8}D'e��B�ɛ=L ���B"1���JB�F:dBW$Ä�@kD���B�C>�
t FA�C��2dk����q��8������ o&�p �Z�vcMx�v �6���Ϊ2A�r� �!� h��"u�$�  >w���^IgFt�	��� H� 4z:��?����=v�O����)��Ĭ1L*c�N���x^h�� ����� ������n���$�aX�r�z�S���ni��z�1��b�׌	& ���?�� 	�^@m
N L� 
���"�kyØ����ŞĽ 4c �w3R��.;���p�,������>9�N�	Z��a
�,p��pf��E:r�߳q9��CU�qYV���Vq��<>���Ŧ%�j8�����_����;��UԳ���~���w)��?�a4�^���s�;���c����fv�{���U��bv'Y�*���}ݑ��GJ�9���Y� �f  `Tʓ[M$�o y� ��=���&%�Z ���68�TDy��:��A�ç����C����8�]�7|{����Ƚo9T4�Zŵ	&�ޭ�4�ӹ{N����O��^;��E���āo���o�y�?��!݂L0ie�
:�'w=xl�a�{����ˏ�k��~���)�4U�2��+Ѓ*�/(Ͱ�$M��n������l-k���i���T�g��4{v�h�k�R�H�%��F�gW՘��*s�7Ԕ �����I/��� (o����3���<��E��G�|+_4���<��F��vh(���ꏥ��0;{� �b-�G���	��i���,@�p�]��4�0ke�G���F�=� ��Ϳ��N%�F�њ@;�	���B�ώ�Mrto�ZQ�M�y�� �Iu?�W�f��ַ}	2T���U�o�)�o^9������� (�?�7��F1)U1鯦����Ŏ~�� m.(�J�.ᑹ�A�cg�� ���S�F��V�S��o��4ZlnJ�f� ��F�W��L ��� @y/[}�h��$���F�.���ho垀����g�2��j���ց�$��ڴo\�g0d�J�H2��f��	��hՊ���p�����0!��}ۧ:N����e� �,�\@}t�<���5[���N̗�X��57^e\��W��E6O�9~��k���Fn�:�1i��>:�C+���a����ҡ���qm���[~�z��ht�|�F  I �&�t�t
��	 ���:?"%�rf�H�IF7�B)�4�~�F��L�LV
nn�X/ߺ��ۧ���zZ�죶&��H'[�� �aN�_�0�`��s�2-�r�* �q��ѮQP.,��X. �^��z�E��C���UY  �Y=ұ2A;t�`L}tl>w�<��V����ܩGx\�V,တ0���&�vb�s��3��%I �Lgr�+<�.���]�ԥ�5RDZ�l �$	 �i�������>�w����h�^�J�;��e�  �����]˚�P[Y�(�㏈��-=$� h�,�\��d���C�5 Pe���N��j��̫Ⱥ�ZR����#����uꦏ�"� �yUY ��[;?>Ժ�a���f6��߃�!<px�1����5�[�ș4���*R��R{��쭽�̔`
�t@O��j�*ժeF�����K̐�Jp��[7���޲f<�|�����դ� �	���';�CZ�b:���"�n�XȒ�`��8�]r"�b.'������cY���K�8q��v(tG�t��jޅ��!X<}�q�bF#ё-c�@g��%�	H=�N��T]��-�JX%8*�@��^�{�/77����Wc0
�Pg�φ�V�I7 YaϟO?s��"ɚ��))O��d�q�Vd^!�J8�����衡��@����O�)����:BF�& ?C���y�Q>EG�@�S�Cc ���p�ѽ;�K������oN\~�|�\����Q�+k]x���s�������0[����e����e��,x��8�O8Fe$�B�� 
�b0+JM������x�%����:��&�*����<9��,�\TAg�����¹c,���h8bc��ױ4b�8�ݨuo5�8XZ�;a��Fù	K=b:���n���㝓��kZ"�;P͍(t�N
��hX�X�Y�P ���<�䌀/h"�D�Q	z]��줌FE��MIf�v�i%iV�� �;�n�|���;�c��c�������٧�Ƈ��F ש;:���n�0�9x7�GaA�Q2*#@��	�8#�� ���~*@���A.� �G�9=E%fc���i. '���1��x�u\? T7�z<K#Tk����{�a�� �dϹ	��p/������n ����w�;'��X^�亟X�� T���Jxܝ��q� ��:�R������+���x�ݧVoS��nw�O�V㵐	�������}�o V���u������{/>�S�H�����_�!����:��+��/���(P@d%���1,H��% `��8�d4�:^�	���%�o补�X�^�r����X�v� 7xϓY=I�bѫ�-����rn�<�~r�3t���&�����R�Ο]Ɏ[��Q��̲:�c��l�qNx~���q��J�P]� �6�Ԟ)�U+����   �U6�;zJ���>��s�6�{��q���l�lki}�GVX�!{!��ح��3���T�@_X˙sTe����~�s��^�V��̆$A�E�`'�e�x��G`w����~QLu#�ҵj-W������Y�dND�o�9��Fs,�h��.yb�Z���nX�� �y���]bĆ۸������룵�N�zH�@G�xb��5Ў���s�X_;��I�� ����<���wU�k��J#�+O���b���m�xj�E|뺁����n�6p5�֑Z �����������zu������t�� -}W��oA��[��-z�t-	��6L3��]��YNO�x%�?Ǎ���6���+�q_��� ��Yyf<���\!F��z�J����{��i/� : -tU��"�jgg��@-���V�ȟ�;�����D�o�����t����E^�՘}��p�{�S�#�� �, J�ӻ���E�*{h��,%!E����/e�|��%.]�k#CFo��w<�����dN�W�7�O/~X�Q̠�t�Ώ�]냕ܸw��n�[^�@oD�g��A#����y F-�z�%6�]g���f��b���逷:�@#$��Zݸ/ڷ'J:��Ԧ�   M�M[�ʬuT�ss�Xf���lG�����[�u&eO�5 @��JS�9���X��o�[������7��՞+!˕�q8�D|j����0?��x.6�����%(� $ނ` { �wL֙K�_�+���F�P�*J_@,z��R�zG3�ҭ(}��Ы0`ߌ��f�2�AC��Aίe�!�q//3���͡dQx����(��� o��6ڑЭ"�S�,(�!���F*"�<��E�;� h/nܓ:i p3��ă����V�TOq,�H��A���Dd�#�[f� @;�~Kj&f� 0 �����#��ZY��W~��>���?.?g�/��2�)�7�4ߙt���|�,О} �q�� ��I�	J
�, ����+-Q�%���1���������vbvԐ���$�xZF�����v =��h$w��e��0bC��Q;Rfi����z��`Et�)���I]Xo  ab�~�0C���N�Rxxan݋9�Q&ף�-!��/W���܀��n|�g[��s�������8l]u��4���v}��'k��1�2
��E���"�@T���Xȑ>9@װ��� ��b���� ���7��>s;��>,T�VO�0�T��}0�"�,�2jk��^�*3�w�P'Ʌy ���pⵔ����0��f[�[L� �֥^<��kụQ+�J���r�$َܱ�+�Qxnqq����|4Y��m�x�7sv�z3��>@���= - ,Ta��a\؆��0�����m�t��?���fn�	?�urٙ�e���* �a����2�.2C�  @�|�$"�\N�0N�īnj��uĖ�=Ⱥ:BV �m�f%"~l��(?��?q-F_{V�������B9�ߴ]���W���1n����7#����w}�������Hw��B�gc+�7� �`�`*�A�喗�8-N� ��<~:fn �x�w�u��$�.�&b�� �:� �׾�K�����#�n?�F�
 �HO�m�������o��G����E�4�������CG�7:6�X��H�U���x������3#}�C闆�Հi(�9�o�F���n .�w��זv*��.��/�~��@�^y��  �@�	���Q�"(B����!�(��-�ùE�e6Bu6 ��A�ĸ���H�� 8x���x��dK�n= _�	�����q������~d�k�d����ܻ}H����. �M, �k����7����?��!)����Ֆ��҇��]5~�E���G��X��'cx� � �,��w8��t1���s���L2�p1tipX�/T ��u�Ot�$�8�;!�ާa&�BD����x��c���G  ���x`� tf �- ��}���c  �� [����- ��Z�|t������M=�Z��KI�Ȩ7���,���k��i>�G����{#� r�Bw��+Dj]x���w����Y��^�:��s���s%A�Y�4 8��|�k���������z��|��uD��j�w}Lm��;�h��b\~�����J�/�OoY�1������ItPoǿ쎱��?�x�j�;�0��R��#���A�9�(B�ٿx�w  �� ��~j����nn���k�S�W?���KQ����+����rM M����my�Q�<��k��,����2: |aĘS��<w� `B+�7 Ӑ��I�2�o�������\a�_}��X`�7�>��d�A��ϝ�f`�@��a.���+K���U-r�ь� �XxS�U�� ߸V+�.��(l��/�^�:���t�G��b 
<��%��l�4����&���;�>4��
��i.w�l��D(  k��/~ V��}  ����̤� �+^��ڸ�oHg>���������E�58����2x����U;&�Ǹ��09<2�00�(o�ɩ���!$�i��~��U�t@b�W6����m'ҙHv �	�@��_�Z ,u,#��2�43JZ&9q�F����3���=K�}�tM��n����z��/����d���j�:���0�t�_���3��ݤ�H lX�'ə6��> O'<��6���/~- �o���AT�f�la`RF�5�<��>Fp�O�MKw&�a�F�Pq���C���1�t�Isx(3h=0�4x(p���{  � p���ɘ�c�m�]����1�؝�����ר���9�����,��tܼ����R>f��)#���#<��^�8d�0`a�s�T�&tq���vP�����*vX!�Y�Ѓ���|�7V,�  ����:���w13H�<|corf�z's,��%b��.�S��|H���<P��f�N�Wy��8�da"�:AM��J����;��&L�B�2B�SYPӼ���9N�w\�G~a��ۆ� t��8 ���}����3�vě�C.Ý\� Pa^�L��өH|f4b�x�fq 1�}�*�bմV?�-��� &dh?�   �3*o%��)Ac@#*��~��+��#���1;P#>�bz��$���{,*e���  �0���Pt�۲y�������hv0q)��R$� ���h+R����Ӑ�<d��_���"�A��s)���X!��~���;+y�� ��h2	m�~}h2��~̖;���079��-�C"�L��:�?��  @P�ͯ,��F��l�@�
I�<�
��Tn@
���#Wq������,�8�����8���#�wk��= @�Ft@�1�-�����@������D:����� �2�����5����������c��Дɓ�,(�Ths���bQl]�ex�b����]�� kW2١	��7Ց���hg/�z�y���Ӄkg��o��퉀�ٌ�#��n��r'��8cA�K�IC�s�����'�G��t}22��  ��r�N49�c�����sZ8~�����#��\����#���9f���lM�e�U p��p���q�m
����߰/��O�Ӄ:x�
lO�N�yk�[w��Bp��&z�[�zKp }��I��XZ�t:��\� �Hv��C�%$��u����>�H��� ����#��
�u�#�V�r~e�yX�����&e4�a�$ޱ�]3���rު��ߊ Κ������6`
h 
���tAW��G�@��f'�;�q�'� ,r� �\����֤�w�����6~�ɖ_SՄ�$�Ԙ�����4u������-�>�8���iv��N�������g���~�-� ���� ����D�I  �D����T��- �A뫑�N?	�i�#���1�(�	�$������s�[jk��!���v~��Q�-�b���1��w�R|�����"����N������3O�� |�8)#��D f~��瀫hf�8��z~���{B3��֯d�B�Gk�Jꩍ��&�NLzm$�ؗ�]Q�5�/'>�W�����~�W�0�9��T9��t��w������~��>Z�DT��_?x ��:����'�V1~Ei�I�k�%iw,���EY��w��׶�> |h2m�N�|��9�;f���[f���'�7�7��_w��1A��Ϝ�w ��ܱ$�"�|F�r�������&�脤Qw�Ԟ��-hgR�+%��BU=jS
mo��6p��/ϼaEy������4��Dt_���~���:�x'���{  �XG7�		��d�=w�?��D�Lw]�0(1��U��D�1��>z��v�cK3w��6�w�������8|n����r��~z�o�|���D�}�~�p󢙳����N���9�������g�;�����c�D+ʶ"A-%TQ:�6Q-����yn�Ww��֑Bt;�|�Ù�n��x�m�[?~�����>���bMi�Go|� �Ħ��B[���>�@h���ȇ>�ɌU��>G�Q�q��M ���p�����꠭�)`@�u��p�&�����_�τ��e�4 ���� ( ��0���<�$ Z������?(ә�hyq8�QFi��� 3  �Z��'�\�(PLRe�k��G�_���3J�	m�9�Z �]�vLoe4� ���&�������ٰF ~���D�N>2r;y�O�� @��g�Y�$�j� ���*��fֳ�%x�f[�8�γ��G�ٲ��z��{��g��G�I��Y&�{�#���wmKǎ���~���8h
��M��
��(؝l[DB��Ҋ�!���k +S�� ShS�J3��6@��� �)0��M]�t�d� O� ~��$�NH?���a(��F�@�� sg��n5Y�3<��M@1P�[�{�u�ɏ~u����w�,���*�H� 	��A�
i�z~��������m�ޝ����@ps� 6@@x�g��'�so��KO�  J�DI����� ��H�|��l�~?�� ]]?�~+�~+#�B��k̄"2�$ mF7����pgV��1;�VF4Cm��G�v :#�j���D? `d�4#3�F��Ri�7��ީ>Ï�;�P�@�;�K�pǛZo��w��@���_�~�s�� d� �@$�2R�2�pa�mή�qަ�������? �`��;��KO?�n��� p�e(=��M  �ݱ�$��o_&h�I����$s#A�#	ҷ/:2�U��m!�7�4"�T+#\'� �bDo]�\x��2|E�����C�I���- ����e�#3������=1gW!D��){ww�e�*���ƨ?���v g�����1��� ��
 �Y���w����� 0R���`0B)Pi�R���Ӏ%z�(��e)����	"	�q�*D��A�y��w���K�q:���2��Y Э�ّm� *�h�8���HY
ފ J���"�9l�%�V�JD��#�T��^U�=C
| @�� ~�&��0*`$�`�޽���}�l��FGFG�:G��ݑC Ͼ��y�Aw�s�o��{���@Cz�]p���_&j�@Cf�X�]�D m�4���;�t���  �78�,: �B�#F�   �A  *7T (�g���`��=��g����--/���pEmZi�,LQR�j�Ns��=7��!��K���^�  �$#���:���n���4��{����lq*j���N �~Γa����TT ���h̫i  A� [��� p�TL߻����q�C�l�k��?#��������	 q���kq����}�O� �+>vx�/>i��Z���'�0�S���;�BT�I�=�|�vj H�d� ���'��޴g��=�� ����W�o��  �. F��x��C�%��X� �^�{w��>��HIx'��=��{}d�0Bs"H��1�ܢ�W ��jJ����~?C��¥0E��6��PX�(b;|	_�vhS���\_�{'�XU ��)�۸0"��%�%꽓~e� j��  7��t �8�tn�y�����E��f������߳��,9�.�)(M�b�%l�FB��`��,�+N�%U2�z���wB� ��*����6��`�� ����13}�>���Θ٦�M�,��ܯh8-P��J�;��������&����3'~���7����~?K�]K�Y��K���؈!� ��w�b��A����F3��.�dK7U��W|�dЍ.��P�Ѳ�@�	��f�Ħ��{�z���Y�c"�A>�7  �	@��x}�tX`�U1ti1�J��&�P ���܌��{�z��!gF&	�NQ�b&�v�lb�T��兦�`+�	�ø!����)�f~�=��{���w:� ��͂�#� �"	l��3��w��;�Y��I�U�EnI�U�e.eܖ�o/���L;���"�T�9���+�w:@  ,�ZG� �wML߻����B�Sq�F�`����F*�D[tX;  �Q�Y]�4U�Օ�P�zP���E�i�_	x�� ��DyhN��HWME���{��I x�ۆg�=jCdp�I��Z���ArH�1q��S���A%����)��=&���ڍ����N.�(�X����=����~/�?�
�~I�RlQt5�ЉL��\a��=���a%D2��[Y�;V�<׵˪��\�����]�#
�}i���qW7��"'ƮkO�Z�]��݋��C+���aIƔ~��:4�+9`��	�xi߱�>,n�&^��9~"n]c��y�f�M���]V��V|d�}/�����u�㺖Lɻa[N�����o��Y9��r\w{�X��=��=��������{�_�W���Њ� * �+@=�C�,1Kx�@�����>�B���8����7 ����*o��m�9ke���8L���R}�x����{)6�̻��h|��Y9nЛȐzcK{j���sid��������Ј�I�(�P�i�)鎚f<��N�� ����T�+�����S���yXg�a�7��|��VV�G��C~���R}��)����K�嚵�M�R}N�>���9]w�����\���r>�h�[�3+�3+@g�a���=�t?�����Q/�=����S���#nK$�j�$ ^L3�!g���=v���a���k� �����+9�Cɷ���n�n�t�+;~h�Eෛ��ԧ���g$�l��V�ǜ���T�}�����S��m�!�]�Y��6�<�S�6��Y���ڻߛ�]/�8#�������5�H�tVNGg��ē�S�+�c^c`���{���̮������H�ԠI31M(�2#��؅	Z  4��;��qr'!^��|�_3.���^I�ͱ��[���oB�����`{���n^�	�r�˪s�g��y�����z�_�&;@o��:�u@s���� ������A�9QnZN���5�^�y�n���\O�Ǘ����7�Ǭ���L�7o<�]mU�1��t=�W]z����/c�Q��/qG��]��⽝� �8h�
I �zU
P�$f�i��	�a�԰��`7�� 6�����K�)�ڿ�n�v�|�����Ɏ�r�N@�Ѱm��  x:��! 1�2�<{Cw6�Y{�������>;�$& �A���fd�CFoX�������E��6޼-�����9����_�惓M:�2t��2tM!���4;����m����Z3�$��h�p���Qz)���|/�J|�i���읍�D��T�Qi6nT��:����}誏Ҝ�9�l��Q��:�8�b ꓌�.9nF[���=Qn<3S�^c�e:�������4EL�581n
6p������`O<��^�w�/���$J�JՑfa��=�Go��:�5RH6&#���^�p ��ݸ;��>h�-� Pm�6�ϕ��w��{3W$�vI.4�O]�����:��0�Q���aI2���������������n�*�����j��t�4��D,L7���k��`�:�,{-z�D�H���[`�:�({������"7�=�����v�������ߛY �E1o�\���HZr��k�8��	�p5	JΌh"鶻pa]�I�!�?��)��#�N��ύ�������}����K��6�;(m���o���݀o��;�Q��%⡧9ٌ:$���J3zkă�#r�-0tU��w��e��w7�-ƃ���{����ۨ7D2*�[Բ��U*�%O����*ꛤ�W6�V/*���M���B�=�C�6k71	k����#^���������LE���lO1��׆�7�m���x���_ mX�N@,
 "G�f��ToQ��@��l�� ����
S���w�o��ű\��{��Կ{~�r��W,b/6��EZH�ܢԹ����?��I�
��0�%k��"���d����1��o�Ύ��G	��,�EK�8������X��(�?�t?��l��&&;r���紋o��l
����7Ъ��#��[G��E�����KD���O�{��ds	̶��/��7�Oəc-"�?Z��p��4�+�D�ki9��r�VkH�/$EIx���Ɏ�s�(yS9�N���M�jm{�/�p�$~|��uL�T�P�� �� �H� ������ �"�e�  �ĆL�D�6;�'藱(F�.KA��I0 �<����{�>�+gV��m��笻�&����S�|����$v���3�s�ZHk�!"�h��Y-g�����6[Ka6_D���X����N}\g*�i�0ic���%�ݘ�_��R�%���K������G�a����Z͖��x���FL���j/�9�FA��r�ìb�)0hM.׸qa~�r�k7��Ds:�ݱ�a]����>f����. �ء����m��wѸ�]�����K�<s�&�?�@K�[ɼ��Y�l:��&����%̧������7� �ɐ����u�Ay���t�;�J�����Ύ��nӇD�7��$`���0޻�;�v�t �2c4��GX�d��F^��8:�l�r�H���:�y3볎F���t>��*jD�u�ɬ9A��*�<w���)7���P�.�9��$S��q��i~�o��
�X�J�]��W�ީ���B+D3F;g����~k��\�$����pN ~ٱ\� 08��{��|:����.��$PϬ!�ָ�=ō�ΝW+K5�6��Z��s0x���a]ʘ ��v��ՇBES����WX�C�{b�M��.�z��ݽ�[o��&	D ��G���\�e ̶��̑~�u�	����� �6�y�FQ��;w���|��2��{��	�w���Ѽ��x�b���l�d�{v7�����o�� �+� �y�4�q�(�BȂ�� ��z�6N�j��G��-N��J4�k'�C�=Ş�����x����[�C��f�[f��Tv>97f^�$���t�qL�5a��A�ʞx�1�@��{�%0kZt�^x��  N��~���D��b��I҃�}�Q ��CXKx�l�i@()����L�P���{�)�S��q	ͽw#P�gκ�$ �;s�"9�A
H;�d�Za�`�9�3��q����2��J�i���-��`泟���Lx�b�~���P1`������&���rz��"�M46ZqT�t�u�(#
3a"qkltJ�Ļ;h띮����{�c�DK&ޢУ& D`���xZ!�A�d�G-�����Ͷ��	" `��@;��gs�f����gOP/뚟c�I�l��)v�h�.��w�v�Yh�& `�#�Ϊ�(P�n:�������<�6�w����  ]�hZK��m�=;��ۤ�y��:�M`�[���s �ٟ��tp�Y@w��ks�d�`�b���tG���è�P�v鐉 F B� ��`���2K˸P��M=�V9 �"x��\��N~ܝ~ݵ����hZ&��� {�>0[0���
�9��e�~��� �g;�h�.@���dO��ZV�Zv�t`m^;��$�F4z	��n��jY@�nz;RD��� �jX ��}Q��2��1�M�t
R��D� �� �  ��^��NA�=��s�����;:��d�����.��vs���5�d �;��f�!���kL6'�;04��k�b0�&� `���w�+c-6��t��j^�ݛ��7/��#H"����T�;B�]k)�%@�� A$A�����"x�爆8�*+T���v:��א	s��%�	��� �;�q��'>�Ќp�D�h:;��-9Bb�.����I3_�2<�Ó����& �.�Ua*�XT\���ba��6��PX�(b^ūX� D�V��<�V�`��0�����ީ�'�L�;�Y�d�l0�v�7  ,�I�L�I/���(�C�>|� ?��� ����/ @) $ ,��VIz �Bz ��Ѥ�9�V��� Re������z�a  |wxM���V ��;�v��'<���ʖ?��b ��n	q>;�% ��#���%g3ҋ���� ����^]�� Zqur�>. �X%���%�
�&�U�!~��UQ�͓�6���2���u�w��� �uh�(3�k��Cf��zẬ�)~��S���� !Td&�� �Bҫ��Zd�U* p��|�$�����w^��_x���  Q�mh�3O|,���w[��x�f_�-�	��/�����=^S'��Љ�/�
�j+����S�𚭓ة�e����eH�� ЎT���iC�_X9)RN��j�_'x��   ���ɝ�B B �GL���#@ �T������*�{�Z!3���pﶴ���,���K��%����~�E+�H$�O�q�r�Yt��|\���F�҆��I���q�'x��8t�V���@W��l���IR���&�ͱC�>��O�o�ښ�m4�woK#���f���C���	���{�
���� �Iz��?�g ���v�+��Cc����ػ5��) �="]��Վ�	|�#d�rD	��m���I�K�{H=̗��y�*�c�@[K�����  �X��¿�ݵ7X���佡�!���'E8��?�B	��n��oO̞����0#r���(�nU���=�&4I -�x#�X�ۄ���Vv ����Ҁ�&	ށ(���`7�h���J��n�ޛ�D��D��<\[@/���Ӗ�;b61L*�Afpy�@�o/Y�]S3r~{���^��=0���?泇Ň����v��?�����̬VR��hģq��a��	��(MD�!u�s ]��إ�<1�ˌ��Q����V�O�t �z�<�W���(�ڑ�eVԳ�L岨�=�>�7#�w)㶬Q��2�\�K!��6�F�O�_Wx��n���x�=|4�N\��� ��ξ��7 @y�@ ����.akQ��}�|4�V>M�e:%��8���~��}>Do�/9Ca����͙��Y`��A�K�l�� ^������{��Z�cȄ�[[E��#T.��ˬ�V�{�=A�o7c�E�@*����l��R�t��y�qݵ0?8ċ6���V����"Ѿ��E� �����:(v)���   e* ��_QWV��1��+�Z �m^I�
ڔ(�p����/����|��]U�x�ƃ/�s����:��|����Z�8��E�����΅N\�<A�ǡ˵���>�t�5�����v����_=���������˟����y�F����K^X>����1X�Z���G�p�_���#�(��u�����@��y $��9RnQ��`�v�d" eW���2�6��A�e�eJ�ɔ��m"0�%�3��Wn��mD�{s��_��:�{���Yֽ�z��[��]�䭎�/�K.�������i�������=��ۀ?�/   6  -) 0��)�±��� @rx��E-���H4�6x+�åpeW�5�Ȼ�m�%׽2m���M	��bj�0 �\������!������ 06�6��|�0��-�p7G�|��DH��E���N[��J��=��0_r4ϗ\S�ۍrh5ER�)Zi��u�k`)��)���S%�ֲ6 ZY��*��3w���� (Z $��C�5�b���"5��ڣ�S�rx�]�	���<�u$q���ꊺO �m�w�-Q�%3)�
  �w�J�uQ��պk�I�״����޻�N:�{֒ ���F�RD�c�2C?f b���ݦ����?�l����(]����v���t7��`�M]�Ln��xq)�)� �a����L��:�֊&aZ#�(�����aZ���J�^i�[��5��1�X�?����wޓ�����o����[jqhzK-nizˢ+r�n������<�,��wG @4d .��#"�@$�R�`Ґ�: D�O��FGI���P�ދ,/>���k:A�t&�]�Vh�o	� BɎ���?���"	�Y��Pl���������Y��}�#I�v�cZ��n~gf9>��?��g�s�� t-��_v�w+S��tӑ�߶^��'���k<e v�$
�t�b4 � �
 ���)
1�{�<v=Q�� P�. ��fpj2Pj�~Y  �����]���v'Mo�v[�'������}k�〮���d����������h�z�f�����[�ܻ�5'�K*v䌑9W��]�e���  @� N�ap��]a�L� �|��om�8G$E�A��e4*,P� ��"�?��? F=���*U�E��m���迌E����B�:0Op�^A��(�m^FǬh�e
TY�ˆX�o�}���/�����p�&hii�2�j���fv��dy�&9�����0b�r%w  ��]%����1�=�]� `�8hz�\��G[;�~kuڇ�b&����W)���q{|Y�sr�f�Io��Dr_�7�(Z���p' �;_�)}���>"�K�-� �yĨ��JS$� >2������ �+�Y ݨ7pQS�-������@Dgu���� H/@k�u$"�lWf�#Y6*�t�U�8��az>ʹ|� `r`v8L�h	�2+-Y�� ��+Ff.B��݌�@_��H �T��r����xF~�#s�{�^��D*-"H'X�$P� U� ~���g���o���� �7>$����= �צc��� \5#�ް�s�D���~ �צ�X����+�u��_[�s �=s��Y����  �S@z�i��GE�uL	ޓ���2;1 (x�� ����p�H�	5�>I
L���|�bD���u�aԉ��D�����7��CO��ߚ�8�e������u��c/I}�С�?������'�;<O/u�$��7J�h*T5�l:RL���?�_�����	  ��7F	�H��8ٰ��@!2�#C_	��F"
��y��^U�=C
| @��'~�c]�.��F]�(����}����;����'+y����������{�G��K  � �%�&���F�R!e�V%M�'�����^c��ԭ�1/�)=]�Ą@�h  � Y�g�QK��ӫN
��bO���"s��� �^�LtD�\J���V����?(�U|t���~C����m��7��eq�B��9���  �����ޛ�0 �H�eOߌ<��\ΉJ 7 J��*: �	�Y��#R  �� #�����p[��̦P�}�⡻�@���m�h�&��  �P�[JC  �@�^3wW8؉�
a�j3��b~4v�&c��3�v�?�hJa��+q�.!�U״�D]9�����޺����eβu��5ȉ�\���⏙}��B���L.�V�n �6;1
����Fi!'��PL���D�� 4�7ϊP`n�'~�Qx�5 =7�E�+64l�����7ϲ��Sq������n���T�ҩ��m�ͻ`�F�Bs����  ~��iz[.��ݮ� ܰ#ŨdΨ 8�MS�����Gc^M �؀�1ם��Ԏ[k1�3�t��h��T(� Fp� ��$�{����r�zl|F��n;?��{c� ǿ@m�,��/q��>��Q�]亝%]�����|��E�Z#�i�x��X�J3��%�������k����
�6y��E����O1}
��1���a%ɳ��ww�,�^t9Do� -�3�'��y�.���D�a���Q*W�+7�E�<�+�<+/q�%���+~�+o��?A� (qrp�R=2�o�nG.x��I �}3�ؕB+
�P&�M{@��v�F��&{ �W�?u���#��N ~�fs�����l8R��&�� *�x�v���d�K���������h!�w2�⓼�}���}���6���Q�U��RO��[�Q�D�����q��t���{�c1}�v�۠�@+U�����e�Iz�O�lc=ʼ�$�GCݰ���5���k��1j(5�)ʃ��p[$^=��XtE
���t {CO$��u3��͉X  �;�<n�y�h���\)f"�ڇ�6�@�	2��
�f�&�N!��+:��\��ER�����w%j���{��}^�>{/Cw�JfWX���?~�!@$������֭�dM|��ЉZ�d��8�z}N���
����dm�.V@Z  ݴV��gk���-����W�6�Q὆C���Q>l�H�}�ty۝d�N�jN��Q��M5���XNv�Y? �mH��' �MS: E�9��b�d�6���K�O 5t�C�\~��⿛���������+����4hS#������y��Nr:T�$��~^r:^v;%��i��}$H+�X�5_izTzw��Ǩ6�B��;�-r��p
����?U�불� �2��C�75��` �>b�0��X���M�~;� �Py��j�c  �t\Z+�7]�x���eSǢ��O�������RС�v�s��*����	�]���7FI �a ���7= ;|��RPI9��J�����_���]��;����>B
�k��;o��"�ݿ�\����⎣���^���_���>��-��,�s�����?�c�{��.q,MUH퉋b�ޥ_W�=�<nr��K%w�nC��d hb9p�[N�[sǈ�~�e���m1��W�
2����Z�ZΗ	<r�Z�-s��V���ώb��)����} �((u�c���&!@t9�� �������;������]Ŋ�8׮�+�������p�7��(w��1���<��t�L��=q�D�����C���ST�5�o��w��.q$	�q��Ƕ �������]*���а���3X�LY�v�j�
9��Kk�~�9ߋZ���ۃ?���񮗓C��IV��w�K��<	 �aR�]@��(j��#i�O���<�=�w��B�R\�ۭ2��f��7z�#�p'�Z�׾w���x:�<���\$�ǝ�|��7�z4��̻�%���F^�����4桒��b
h������K3쎚eyڝ�Qf��̪�{|�ٌ��O�b\��eY��7��*�N?�o�B��۠�5ш��U��g+�Fd��Z�����^� @�<�y2.o.�<����X���t�19�a�U�]�7ɺ��^}��?��>�Y��J�Q'�V�^��^|���k� ��w��yFW?������G�v�����% Il`-����LŞ� `.*3��� '��5� �����U�pv	�e&x�a�}����%ͬ�C�D���e5�{ŦSm��~WM�<)����3��w({`��- ��R `�#G�R��;/�]��j�q���N��9w+9�[��._|�se}��1�z�7/3moys'�{L�[�+�<�r |;vm��D�/S!+���B� �5��F� ��P�HIL@��K��S�F�����ĈX�����0}���]u�2Ԋ0�7)���n�B�&�	04H BugR�kl݊��ϙ&��.��/� � 0YV��DO�þ��p\xrk��# ��`q��zڝ9x�AD1�ڋH `$�K�9�W�i��ݜ| �^�|����-Kĭ�KM)@��#�߻�՜�&��+04
�i�ғ2J�.P�F1x)FD(n�� ���o�@��PS �q��ˮ�I8h��N��&��[_�]����3J��Ԕ�M �߻�P�oƁJ�T��;��W@GKt^e�7I\L�S�Ö@s��	#����6-Hu�ds9{xu0���$����"�? �]Zi�
ټ�� ��) �h�. �	�D$�4����;'.�s�o~u��#�����z��W�"'ƮkO�Z�].�gu���S�D\�.���
pi���qW7�H4�(� Zu�`r� ��/9����u�u�i�i�dR &��V��	��On�
 ;��l�X޼R	��V����������� �/��M��9} �}a�x���S`i���Ԫ�ԪS�+>��O1�&^�ѩ����u-�Knj�U���T��a�a��M�|�q���%�|���3��N���eWp�T�MUH�KO�pr���n�����  <�wY�����?]���W� tb'����W[֦V�3KC�T���7��Z4z/-�5�MdH���=�j|�����ä��Ƈ���LdHݖvY5>�Rl���u�{�	?4I ��, |O�%pk�ډ��MFb��`��ԡ�>|V���}����A��&����U~���1���9��i/���ݹ�������NM�h�u�_,��vzn�����>l|��Y=�����S�����Y���aw^g�a���=�t?�d����ڇ�����+��\S K6��.i�k��7�K�9������t��5ٱVV��<k���8/�����̊��
���4@7K@"�Uz `r�'��o�z����x��<�h:iy*#u�o�k�7�5��n� t;uڧ�7��,5o:5�b|�Fc�m��֜;r��&�c��7�0� �m�m�S�����u ���?4�"����Y9m��3��fW���ȣ?%�z������g�S u��۶�5Kq[¦�u��ƛ�3';NU+��5lK�m��w_՞�f�Vi.�Zm�Yzv��{%���s��?oI�3ݲV���<�- uSo�z|L��DI����;G�;֦V�';z-z+�V����Csͻ�f��aL�\Z:kНsb��q���+6��ԪsG���y����Q����&;@�&�ezˀ��	��\S ��rΉr�8�o��ZU���&;@o��:�u��n u��k�0-�DW�g��ɽ �&��Y���ڍ�X�x���(�'��cu������v�����= �G�ؿ��)�hl[�] �Șu�F4'��Ҝ@6"��=2��Y�Y����9 f�s
)��\�viΒ��Ř֘�J�fS�`�@F���B�Ƅ&A_���fXD� �Sc�C�K����`�PٴLR�H�*x�W� ��g{�o��~�W�LJR�o���hN0NL!c�Tuä�&�뱳�]{˸��39�O��<�UxdE��Dh�A,���4U�5[��Cd�/��<ȅb�K���3�ʬ�����������%f��ߝ$��Ib�Hb��&١v�rE��x�W��z�g{e 2h)���nsj����&4��2ܸQ=z+�If�O2{�@�m�[4��GݪKo���L�ĨCoМ�J��8o�u�g��}�7���)PjA�v0��r�p %3���d��>��O�������v��}Ye����qĮ��gf�:���g��-������BQ�3��4kcg,��;�P�h��Z�n"q�&�n"�M��d���֧x�֧ �ٽ4c���j�������� ��{����wG<��ݽE�� �BRu�Y��������e�	{f�E�	 �:�,L7���1>no��u�>���,I����\@��dI��24)#�q�A��d� �ZƼN�=s����ɀ>�abh2���d���Y?�pr�n�fk����N.1I�Ř����&�������`-�R]�����*{�rdo�KuYB-�G�b��E���7��9_hj�K&�aMl��Ez�D�  "�-���^* n�{baoS��2$6�^��:Q',2A�iN��tS�X2)�]7YYP�$��q�>�^~c>���#`��*���0I")�Lt���=�E�����n�S����HQD��$��[V���Qݐ%%��sюJ/)<\�v���v`�ĕ0� ��E̕�N�̓U�D��:1<X5�͉ ���+�2]�L4�4�m��$*�ѻ��� �V  ��ٽJ�h�݌�Hf2HT��[#��&��ͨC��$u� َ����<�)
��=<��} ��W�|)�滁�w2
��xd8)����s܍x�M  }A���? �{HSͼ%��EhN/�1/}�[w�1߉z�T�,aE|���=Ѡ:Y���D[��ZGmS�}e"���VQ�L���Q� ��O"�A��C�b�jW�
�5��U X�n�� `n��� p�jk4�
����lm�#ٲۭ 	[@ $�a�  �dm�V��
����wz⋾ 4_���x�3�y�� p�Ώu���%ȵ��&h%C���]��z�o.7�<��3��2�Q�CEfԻQ�����������r#TFKe��s�p����n2�V�vHb-�
W�6��l�=T6�� �mgJ`Qse�'_�tR�j�}3����ض6�M�\`�kv��p ���
�r�c�g�.���J7�z:�횵���B�Ze���Ŧ�6K_k�kg~�]nުn�AE�Њ�w�ݿs�~44 �W	�]���x��҈�w.��\�B+�]~�]��+?�244���~���a
YL0I�d�4^�n�m�HE�e ��~�x$�+l�<�yk3�܈.L��}1k�,�f��Fab4z�a��( @�� B�M�N���P7��������_rzn��<�
{����騏�)�����o;׸`ɆY R�a��M�4���k����M H�Y�&���c�ȑ�d a����'��$r��t�!���//�����w��8���6�����(d�Rd��6±� �Ld�1��ذ�6l����5�(:�
��G?��w6 �qY��.�y ���$%)I[����G{��z�㲧�����u������HDÎ���5.h�U3�+��F\=, ���u�3�j0�M'"ke�O �@��#= �����34aj�z��S��4���W�|�n7���F>��PIv@���?����h��'6�^������I�}��^��_/���{oz_�ٰ�	@9lP�f�7c{S�оP2\����?}��k������ܲ_��g�ֶ/�[���^d��"s�Zv�q���X��t����@�ޛNO~�= mҒ���d�Sdf�_�  �:�1��&���l�)2�a#l��̎ ��� �
J��\�_'Gt���/�ViEfG&dv�V�m� _���7~�oxJ��
���  ���O��	����k�1n]������غ�`�D�\��E�j��I���W .���҉��	����>�'N  �C�g���#Zd�g��)���[%A��$�e��4ft�ڦC�{,���o󷎩�Ƿt��3��6�=�\���GZ`vb��w�:���/����ǪX �$���4���h�*e51J�y��sG. 	�˭+��e�_��+쵊��;yҌ���`�a��  �%�/���-x�����y��� �Qu�  �i�L�C}W����_�)D;�-����RK��ZLJ���2���p<���������~v�
����w��X! xgJs�X7�R��Q��JB��e�54ՈH����c�n�u5�K�>R�&ۋl/�z�4x����X x�I��̫�����z7� 3`�zp�y�|MZ �T�$2�[�o�jR6u�2�y��������GA�d���p]  h2C�<�Oq&O~�˭�e/�ns����7�m�Ŷx��$l��/ hÈH{���t��u���N�,�u5�	��ҵd����fas�,׺�Spǟ�TI2  ��۟�w�.���UE�L#�Ң r�Kn���-	n� Ĥ{�ٱ��X�(B=���܍B�U�2! ��-:bF]3R��J�`Vf�Sol;5{I<ݼ}�����[���� �M<�{J����bO8H��������rO��z�ݗz�̤�# b[�[�߹��:�23�Z�4�Z 6�R���Q�����U�0����B��b]x��\�8'��dS�#��~����ZZ�Eo�ࡋ��@u����#�͍ܰOQ���{��Č�	zV�]Hhi;����|k�� �rn]�ɬW�Z�R��9�shbsNΙ���~hƸ����Wg��<����2օ�J�d��3��m.:��^�o}��,�v����-'�MA��>�����2p�jd� �!��E��?b���Ac�ڣX�B�� �@D�;���.�\��K�r�[�c$��|T\����y����fސ��>)0�7�� �����r�_^��w�[b�+ա	�D~����x�v�\$���x å�r��.�s@]	��W�- c+F��{�ǟ��u�	�G���=ᭃ!�ЧV �R$bE������bo�B�  �fɫ������y h���T������))��=Ty�w��[�N27��
�(1�o�gҕ� 4K�֤��e�f� dMgp�6�80�Po��|_H���-�##��9�f�b����k�_�	� �)vp���G/�DV�-`��fW�	M P�����a=l�Pʉ�e�t��- ��?�i圛�pE싩xV<+�r�Z9����/�gų�I�>d����ۇ+x����Yl����p
�<,����c�����e�T��m���I�������:j ��- �3S ���tp~��֕ Q��� �t��g�>z!1��� ��I\XI��f��]:Q�:�Ǟ��nG2�n��Û�)�������~Z����Rf�yc& ���x�c2*Ң4!j�V9o�Kl�}�/  υ���H7�k%�B�1�率���>����g0 �������r�3�&
+�P&YϞ6g�o����p��$��\�����%�������<����/^Oϐ�r�Fx�P^��_\��*�g?��B����<Ν����D�M�y/kW�P�Nz����9 ���r2{b�(P/��~n��:��7m��  ~� �xl��e���&�!B���.Sϊ�+��<����w����А�/�{+ �
�ǿ�,�xB�e�^�E��HS/����]b �ɸ
̘/�Dϐ�g><��7�?0&�Q�-nW~�P�}��U L��iBH��@2�} �)np�I��9 ��I��T��S����@�L��c��o��'��A��`�#5��+"'UjW�Ld~BWp,��}���^���^!+�� �=�`0e#��!��ru2� ��"��h��rx��#{#�;{�l����\a>������  8�+N"��&��� p���Y@
^�I;�G�ϜB��?�	6�:4�+�#����:��W(�f�;h�]({`%���O��ʡ'RCiJ�asW����m��7` Poly�2��^�t4:�Ý=^�OG�}:�2��# +	0B:��.k&C� T x�b��$5R/� ���)��گ Ĭe_d?�ơ��=X�B��3  $�R�7��5lP���m��X^�(��G�<t���2^� �K�7�u��9����(S�e=�(^? �N_l��q�L^�n�&/7pkm&�|�O���\U�
�U�*��;.|�q�q��R�5�5]VȰ���. ��`��s�8��]n]�#���h  �vvy��	�p�Zv�zޒeHWĝ��o���?-p���|Lb�@csm������PI�\v�I�*�C���
�4�&MF�fx�* ���.@̀W�Iͦf�D��ʐ��~-𯯽,-'��<x�"������� ��4z3>�8� v�k\p�q��XSv|�_}%�q罯t����X �:��0�ЭZ��� Ĭ/p8uYd8���
�p8���@G$T��� ���?�	�|es	d������;=��#��]���vx-t�#�w��tc  ��e�5�u������?���@:;��M�$�\��B�+� L��?Ts4%А 8��h�9�^��Y��$ �UEƲq�I�,m��V�P"i[�AJ��<�$�Xk�<ݜ���zFB`�z�a��H�0��5z̍��t #��nΛ� �x�+���S�G�U���s��D� �?�Ο�qxy�1���˃�88�<tH�Z�,�杤 �{�6���F3浳��C�[2	?@i- }h�h2=e($��q��Lk�p�� {�Ƣhl�ҌWT���K��:y'0#���UL �ޑ-��Be%I�HiT ����.��I��a-��ϵ���H�	ǂ��ޯ(B�W��u׌&���j>� �  �B�hI������U>�>}��`��e�zܺ�km��^�8�@G��i��S��6Q�b
<�=��ݒ����f��@����%�yl(�� q'P�)�?t�Ojv�{C
�[�-�0�Q����pK ��ׇ[B���`5�˟�'���q���5�>�C��fuѶ@�_�Y�Y����H;�f^�o�0�b�2�eGiv����u4��c;͉Qi�Q'�ٺ�^�е �L�C���I *���R� �4���Ţ�)��",B{*�h�F�u;B#�鳽���qn]��y��޾����f�ѻ582�zv�c���U �7�l�r[tM��CJ,�0�-I��%�d�  ����p�.��2��������g{7�c��o���7v����A��;8�o�����)�x�w���� ��U���i�	x��$�ވH��J7Z�� �I ��ǁ�"ą'�7Q[m�M����usF6��鎣+q=DѤw=�:��\�0�ݜ���I`���sEP ��?!�ƭ�1#4�$�4BTIc/�U���Bw�ZA���泤�5�@D>�G|5 /<1ʹr( �����M��.՛���M���9�: �ٛ����ɑ��K�ݖl�y��g�bɋ|r��  r�u�  �pSAB��� a��h�V�ȃFPA����>S�ɣ) �O��_e��q"��5��`u �s=�X�����w�������\cՉx�m��)��G�μ�[�^K�V i 	MN�i����t-�	TV�Uˬ=U*�ȃg	�8�lV� ���?|�2N�}kv�� �9�̍�k�ջ��S���X4' p�z�c�o:Un �NhJ,�:�8~  �k�ҡ	Ihr2���V:=�9
�U�e��Fgӑ�<"��Ra?8 (#Lt}p��Z`�L7vy|�僇.����
0p���e!vY�r��q� ��k<�ꢺm�	/v�[    �  Tԑ @ r_'�A�
i�
O ��t@�O��;����̡�p�e��=��X�~?�3�������~��e�}�Y	��˸�ܕU�OG�����m�=@K6��$�B4 �	2�}�+,��v��/�~��ހkWQ�:m���N�-3�e�\�_��@[�As	4h��`uѹ���jVipCM��Vؑ ��_��俽������"$���� �}�i�x��+]��*׷������������I�Fl/b| ��&�s�J��滝2��	"���*D��w	 �O�� � o��?`E�����u7߹��;�7�	%�c��cpҍ]�lr-�q;� �L%V�,������"0[Ć=`�
���}%�
�(�=��"�\��:��
P�� ~�/�~�?�����k��O<�"����c2��x���/Mxr��#O���������α��}��T������<�N���O|�F�~"���7�hi�;rH��Xn]��6n�� @x�Z��u��VI*t��:y�-��在r� �Ğ�����*4�1�`D
  ��d䶰S?�̶"�� p�G�Sg��O[�����!�/�kR�-  ��\ml��_Uj���W��l��%����o  "d�K� 5*o nhc\��T� �T�H�����P�r�j�-�h;|�N�RNѐn����"�ob{����#��� �i�y���h̫i  A� �M�u码�&�.�g[v����e����U�'�I,�2,��g�` �b4������aiey�J�́�L�����xJ�0/��%���ob{��!]Kf� 
e�ߴ����nA�H�d��8;�L�̶ p����	�f[zx��q��L�vqQ$:�.�- dӉ����A���և7�U] <��hS���j_��N�^O7o_f���Բ��pf2t�췸�� �x������x#%��DhN�) ��!�k��59h&�)� @��q
�W�2�˙� �&BG8	���t�5���-�8�W-�]t���[&߲�˱�)������+�k��L���~ �4��B<�s[̛����/�O���+�;�=�d S=4
.�ʀ�������k�G(��
�"��tH�O: \�ɥ�j>0Y*��Z"����C����s�������e 4'�ob��g�1S  Ce���̛����k�h�i�	�Rs�|�d䔚*т�\�0p۞��f6� H�M���i11��
жX�fxqs;�`����
��z�$i8��o��U���/�ŉ qL"�6�G���=a���n�C�n 
J]�99�� ]�C��U��, 6y�� �6\�I��I 8� � 8�`�Rm���-�ÓX6Q�=��=Ѯ՗� �y؋��ft�K (10(l�-�HD��,F���*\ERE�ʚ�8< �U�mk0� �&��$�14���V��ۗ
r�:�;�Z�r>��@m*��H��s>n]	��`���V]ѣ:����^3����娉F� M6�-�-rf7�#w=J��E j�i�
�ibfK�U���`�/ ���\$��= _+�� \x��y��4_��S�6^��~������m|P⍊��}ܭ�/��/.�g���  �AqY0r� U: �����j��]�����|����~�}�|�Ճ;~�C$|5�b'�  rU����oL��� U��F6��%�`Jp3@yڌƜ��;�) h"���шF��|x޿oL�t�foJ&>4&�>�� !��3���5N>r��l����̕k�����
���IS�	� ��_ b�j���Xܹ�5Ҫ��h��rx��#@�,���Y��B�q��g?� F���� 3m�4rj��e���$K&W�����Ev���8K�$�����`�|`�Td#$aVu�vF� �M�3D;Xjެ��������6>��e����hh���/槣Ҍ���� QP��W� ��O�����] �;���
��C7;�z �M(p���޷~���������/W.aq�w �"�
 w�K<�0�5��_�"*^Am��{����A��6��C��<?x�"�-�e��5 �K�7�u��9����)>�Qp�0q����3GO0��\re��,S1d2��	�xׇJv��E� ,d����1 *�H��R�����&�IJL�6*^�C���߫�(!ӕl
�.����ܲ���C�[W���}�|<�<������L�F��ղs��l(AN�u��j�� ��:�qW�{���=�jmv���'bM�\�V�	\Z:��r�Ս#���.����Ļ�M.�@�����>M��u@p�>�� _�����ͣ�\�DRu�۫;�\��!�H %i���� ��L-��2\	�}I '��<x�"������� ���FoƇ�G�@Îs��5.8kJ�%7�˪vYu�ZѰ�0�x�F�>�S׵���K�7��V��V��]�G�T��lh�k��S�%;�~o��gtV����^���xb�ݝ5�ˮ��f*Ҧ*"�Z����~�C�#�����@fv1U���8�*�qˬ#pt[6�N@x��T�&њ��N�-�ȣ0z�^����6ߝ�r� ���=�x�����T�{�Q�e<f��K��a��E���c��LM���Ɩ�Ԫ�q����S����.׌���9L�[�Ƈ��7�M��& �ri ̝č/b�j��І8|2�X����Vqκ����Ib�n���D
�H�Z69��30ػ>G�32�䦶���^����X,L0�]��K�9������t��5Y�VV�GmO���{�>�5�dé�񼂾��;������Þ_��s�cmv�x���C�ϋ��?�k�k�c�|S�\���9^��t�s
��oiϬhϬ�_��f�0�f:I�#Tu�]p�1#�h��䟇$5TMڕ�� ��ZB�T'��8�Zq2A�� �M�d����.�do�X��]4*�xEEx,�$�yP�>m<x�3'+NU+�cvöT�}���x�M\ڎ�ץ�-�s�;~h�E�/ܫ�r�8:�g$&;Nͮ���G����N}�xӁ��_�v��aG*�~ob|��7��n/I|β=u�8��\� )\�� 4�d��8< ���D[ ���~;�P2uʖ��"�:/ ���Υ:L���%�-{���\k���rDGrQiv�s��T���MT��r���}�>�;�̮�
�[��NoМ�9As22�Qv�sN�ƃn���S��y���W�G�v���� �����-Ӯ�c�����+�K�Sws�=4���vНsb���}����"]an���.`�Dq�H��Y���x!d}@�������n��@��NY  ��h߫9g�=��5@�-�/�[�qđf�X_�1t4��c;͉Qi�Q'�ٺ��l�c�4�9D#�7�ލ�mk�+  ���-b��$��R s �����ng������!c#�l��-(#��/���.<tD@GZ� �J#M��^-��ܺ���vC�}#����o�n���]C��o�u��%@m��z���D��2��;u&tCڂ��y�l��q�	�&���6р�T*<���I�;�2���o����p\x22�����>m+���H�vS�"7���-�z��t�]����7z��Z����S;0oy�Tm0ܨ�u$M��[�9As�7��u��<�E��sg�{o�U��p�Fu�-3X��L�u7'�4Í��:���[D}��]r <�r������_����ۏNjA��`>n�	�ps�dj+)�!��s~�� �0�lM���t}�)�db��&��+0��Z���j۲RI�W���,]�빠 �?�:��T(���u�H5��v+�fc�{���H!٘�x��{-�M  ����=��<j�{�K��.<޿���]j���9��枨7�Lo��2Y�]��i�	{��N-Rx7�Gb�Eo��R��5���	`�IN�	^5��,D�J��ECf��2\$�cE���[�r��<��@��ݽ��'$p��AQ������hP�
�(���$�(�f�n�e)v�GFߨ����J��'S�=Gw�,L7���k��`�=�,{-z�D��Ȍ���yT�_�|���9  x�����uW!s0Һ�X���F;��t��ќ`a��H�2$6��"�e�-��L�	���^�M[IJ�$i��>�^n�ُ����w�w�����Gz����7 ��Ա�H7\���
0�C� �cR ,X.������ D��ݵX�,�ӜlF��vCo��5���5!��~y������8�e�< �&�e7�=Ѽ�m1�L����d�:$3$*�ѻIo�h; Y�u� �.��?�����Z=<���? 	�$���+O'_�[���Kn9����K��Fȫ��  ��8h� ���~��L}A����9 ) .ū��p%�2 P��i�����k���oo���� u��^��f�ݫ����E�k���H�6��Շ�'W�N������//��6^��V ����}rm�~� X�]e � Å� ,Z�f���n�86@K(�2�o6�I0��"I�ŉ������7`xӓ7��~��6;o2�
��O�&�"�[͵i.�˫��ݾ�xΰ�Vh��;��w.�����;�hh  �*���;������
�v����+��	��.�K��V��U���s9��G����P��<�&  �6s���5����fXd��g]��օ�D�����UlDJ�	���o]�ZvhMg2�
  ��Xq$��r�8E�k �<�z�d"iڦ��� �ˋ�;������_��Ϲ�{��t��H���S���c�l&� ���'��d;7�o ��;/�'w^�O��j�>|�Ȍ�Ȍ�|�2#�ND��L�$S����>�����5�p�� 
��q��XU�����?xr���2  ����(;p�w~�R���YG� 
 h����	��34aj���Ol-���	Hc/<�ί��1�n�W�|Н���.���ˣ����{�"z�G��7�֞��������0])y�M�,6��b��OJemV�Y4Q&x�UqZ���  :�VhQ+I� L�(II�{�ea�)/@܇����@[�i`x 8w~���{� �t݇N@��� ��m�22@0!���"�
�� H�1��;���$4�!�M:E�q#l���� a��'��/���&��_2�Ҋ̎��2��)��� ������o&O�����_������d(�Bf��[��~��Zdt�1��i  `K�RDYKl�$�>	�>f' �;>p �:���:�Ƚ��^������l���D�tV8�a�.��������1	gY�2��������x��c�ݢ�$���@�Y����^����t ��}�ȇ��ie���   �kG�͂�̡EZi:0hKvVE�`2�d `JSR@���e���;>P�_~�2��E�ɷ}� ȧ&;����.t��=-���?���l7h4&ZiE��̰������Ii��S�v��ད�ZLJ���2��o�xB�p�w�.b��zx�
��B �\��@E� �9��U��@k�s8����Ӊ!��;�D}�������*�����@�@������g����F8H#��������[�o�l�d E�p���?�N�,�>�� �&3x����<�?�ي�TQ3�w �(V�X��T�2m�X�Ic��A�0��d��pI��&w~�����"��.  7��w��[�&3�(ne�2;ҽ�8j &�"�X�%����Z ݋̎e>ǚ�j�Sk7
!c��%��6K�je��� �"M�Zv�q����vEF L\��X2a�8ƪ�{�����c`󿓁<{�=YC�0���~'0�<!�U�P�.Ӥ� ����-��܋^@G����}� �yKP2�je�J�n��%3�����&i���
�h���W�U���H��h�C��1��	�,�s�|�y�IIl}�c� ��ܺl���_a���sf�$6� �朜3m�7�Ќq�^����s���`s��e`Jm��J�ZJi-%֚�b�����Z6 �m�� �Q2
H�47����/q�w����]^��[���e:�����^3o��묕fސ��>)0�7�� h�x���y��Y���@�Gנ\�VJ`b"х @�&�sP9�/�}��u�2D��  �2%S2vNq��ø5�cz��a�CXK�{�e�ЉX��;�����  蒹�ܩFL�Al�,!%6��*o��#{�l�Y��� @4.�0;�j���bP�B�� �>X�]1���D�D|q�r�h�m����D��2�����Wy�?x2'�Y* �X�Ppb����B���ݕLz��w��N�Vι���,��<�gq>�|�rn�^ϊg �p}�zýq���Y<��+��خ �~���u���Z��5�jt�-n������)��JP�� �4�X��2�]�+*I��+��Ozh�5��ٌqJ��b�#����d�����0�i�i��D��N���OU�Mڨ�'�֗��vR�t��n)��,.c����x�����tc4�A��bn�~.�-�ž  <n�C�^�����"���>�'^L<3"�oi1�lE�Z�j &�����yN�GCR	9��5$��$�R�^��:��[I?c��aJ�F������%
�*�|�Z���g ��S�F1C��pH��	��k�| ̰ߘ킀���h-� ��ԃ�t."��H���4�.�5���Y��a��g�����n�o��+0+�@�W��5�B3��^+R-���T:(VK2``W�5b��B<���'{2cD�BR}� �N�e� @�ҡpHl$���~�'vU��y��"��Ҁ������U@H��^��3#���������0��̐�YnW�����(d��T�Zjr�{3la �WCZ��O~�R�������XS �~� �丽d_���KK(��?���ف� � ��ʉ�%�rF�6k���~ϰ��=���QV�$����&N�;~�1�����(�#F�.��� �~�NU  ��M	^ h�04] ��/>^[q���N�q�r( ���pv&�Ot�L�-l�V����??  �@� 4"Z1mV�]b��~{�?	46�L�\I� �i  ?���1��远�a��gb5gwJ�c��HYK�yn1���k��rQ% $uӪx� g������/X@7��Z:�$�����A:;�
`��w����*��]9�+�w��pzO���5��=�5��uiE/��8��aX;� h���V1� l�lL�9N��w����H�&��I'��Z�g��D ���`,:d�{o� kO�6 T3/^3�ua �����h�P������N��UR� �(]���������?��?��&�� ���%&I�F(����hUH��;��!���އ�Ba��jb����[A1 �>��  ���ٕ�p�� �e��sz��<���p����4 �&� >$�}�2��u �Ua~�W`D�A���hXx�X�0�S�m�B�*2gt~R���l��@���K"f�J&M�s �?�� S��8�2��C�]2��^ ���|% F���Cr����a,�I�L��{��7`�
8��F��;��*��_��Q�Y��	���g}I &��7����Q��<����3@ ��$'ic�>hU+#��%�o��C�����k�ő9^Q��Ѽ_Ü�8^8��}�yy��rE�ȹ�J�{Qrt�~��!H,,iu	Z�k �7��y ��?�� \0_J\����PVǨr3_��&L�_����������0���pK  �q�o��2��q +�צT��B��䣛��|������]{���S ���=L��4"��AL[�M&�|�;y)����S����O�P@E�G�N$��  ?��WW�~�˕C7������ ^Pa�!LH? :kf0;�'����Fw� ���� Pa�$���ro��\4�i�9�! ���| ���y�{�h�3��	�Q��ڞ��5'�j��gBb -N���\���{xh�$L@3��p"����  ��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ddrvc1lbj2swl"
path="res://.godot/imported/tilesheet_complete.png-5f93f3c22ca1735fc3b12890d7b0f5cb.ctex"
metadata={
"vram_texture": false
}
 y[remap]

path="res://.godot/exported/133200997/export-053c088fcfd156ea19f3d1ba53835dc9-character.scn"
����"Z���[remap]

path="res://.godot/exported/133200997/export-92e21f5eb8f34d30931363b28ed9e055-stage.scn"
#�#2��KFz�9�Zlist=Array[Dictionary]([])
[Ou��<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
�l���@��   "3q�y�wZ   res://character.png.2qTx�    res://character.tscn�pb�3	
'   res://icon.svgFj�;5�   res://stage.tscn���f�f   res://tilesheet_complete.png�{,*ߔ��Nq��jECFG      application/config/name         turn-and-jump      application/run/main_scene         res://stage.tscn   application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      �     display/window/stretch/mode         canvas_items   input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/jump�              events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            deadzone      ?#   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility�ς&�Xœ