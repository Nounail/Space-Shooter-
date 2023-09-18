extends Area2D

var speed = 5
var damage = 1.0 
var velocity = Vector2.ZERO


func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)



func _process(delta):
	position = position + velocity 


func _on_body_entered(body):
	queue_free()
