extends Node2D



var currentChoice : Array
var ink_story: InkStory


#func _ready() -> void:

func _physics_process(delta: float) -> void:
	ink_story = $Control/InkRoot.story as InkStory
	if ink_story.GetCurrentChoices().filter(func(c): return c.GetText() == "Yes").size() > 0:
		
		if $Control/InkRoot.story.changed:
			$Control/Title.visible = false
