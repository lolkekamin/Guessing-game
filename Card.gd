class_name Card
var suit: int
var rank: int

enum Rank {
	A,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7,
	R8,
	R9,
	R10,
	J,
	Q,
	K
	}

enum Suit{
	DIAMOND,
	SPADE,
	HEART,
	CLUB
	}
func _init(suit_: int, rank_: int):
	suit = suit_
	rank = rank_

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
