extends Node

var startcards = []
var cards = {
	0 : "Reisende",
	1 : "Forscher",
	2 : "Matrose"
}

var h1 = []
var n1 = []
var o1 = []
var p1 = [h1, n1, o1]

var h2 = []
var n2 = []
var o2 = []
var p2 = [h2, n2, o2]

var h3 = []
var n3 = []
var o3 = []
var p3 = [h3, n3, o3]

var h4 = []
var n4 = []
var o4 = []
var p4 = [h4, n4, o4]

var players = [p1, p2, p3, p4]

func _ready():
	#shuffle starter cards into hands
	for i in range(4):
		startcards = [0, 0, 0, 0, 1, 1, 1, 2]
		var player = players[i]
		var new = player[1]
		var hand = player[0]
		for x in 8:
			var card = startcards.pick_random()
			new.append(card)
			startcards.erase(card)
		#put 4 cards in hand
		for x in range(4):
			hand.append(new[0])
			new.remove_at(0)
		
		
	print(n1,n2,n3,n4)
	print(h1,h2,h3,h4)
