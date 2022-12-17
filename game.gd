extends Node

func _ready():
	var cards = []
	for i in range(Card.Suit.size()):
		for j in range(Card.Rank.size()):
			var card = Card.new(i, j)
			cards.append(card)
	var players_amount = 0
	for i in range(players_amount):
		var players_cards = []

func _process(delta):
	pass
