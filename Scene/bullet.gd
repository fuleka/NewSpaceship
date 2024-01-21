extends Area2D

var spin =  10

func _ready():
	pass # Replace with function body.

func _process(delta):
	rotation += spin * delta
	
	
