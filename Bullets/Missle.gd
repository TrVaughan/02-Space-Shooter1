extends Area2D
var speed = 1
var velocity = Vector2.ZERO

func _ready():
	pass

func _physics_process(_delta):
	position += velocity 
	velocity.y -= speed 
	if position.y <0:
		queue_free()

func _on_Missle_body_entered(body):
	body.die(10)
	queue_free()
