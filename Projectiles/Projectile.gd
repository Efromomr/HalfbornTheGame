extends RigidBody2D
class_name Projectile

var damage = 1
var knockback_power = 0
var knockback_vector = Vector2(0,0)
var friendly = false
var hostile = false
		
func _physics_process(_delta):
	knockback_vector.x = knockback_power * sign(linear_velocity.x)
	knockback_vector.y = knockback_power * sign(linear_velocity.y)
	knockback_vector = knockback_vector.normalized()


func _on_Hitbox_area_shape_entered(_area_id, _area, _area_shape, _self_shape):
	queue_free()


func _on_Node2D_body_shape_entered(_body_id, _body, _body_shape, _local_shape):
	queue_free()
