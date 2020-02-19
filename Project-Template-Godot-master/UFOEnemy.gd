extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
    velocity = Vector2()
    velocity.y += 1
    velocity = velocity.normalized() * speed
    
func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)
    
    get_tree().change_scene("res://Scenes/End.tscn")