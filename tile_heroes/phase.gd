extends Node2D

enum Phases { Move, Attack }
enum Turn { Player1, Player2 }
var _phase = Phases.Move
var _turn = Turn.Player1


func _ready():
	pass
	

func _on_NextPhase_pressed():
	next_phase()
	print("Фаза: ", _phase)
	print("Ход: ", _turn)

func next_phase():
	if _phase == Phases.Move:
		_phase = Phases.Attack
		return
	if _phase == Phases.Attack:
		if _turn == Turn.Player1:
			_turn = Turn.Player2
			_phase = Phases.Move
		else:
			_turn = Turn.Player1
			_phase = Phases.Move
