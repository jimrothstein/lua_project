-- self = sugar
Player = {
	x = 30,
	speed = 10,
}

function Player:printPosition()
	print(self.x)
end

function Player:moveRight()
	self.x = self.x + self.speed
end

Player:printPosition()

Player:moveRight()
-- alternative way to call, use `.` and send `Player`
Player.printPosition(Player)

-- Alt
function Player.printAlt(self)
	print(self.x)
end

Player.printAlt(Player)

-- different table can use Player functions !
Enemy = {
	x = 50,
	speed = 5,
}

Player.printPosition(Enemy)

Player.moveRight(Enemy)

Player.printAlt(Enemy)

-- Player.printAlt()
