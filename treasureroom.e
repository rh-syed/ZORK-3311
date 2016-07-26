note
	description: "Summary description for {TREASUREROOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TREASUREROOM

	create make


	feature {ANY}

	LOCATION: STRING
	GotoGold: BOOLEAN
	GotoSilver: BOOLEAN

	make
	local
		initial_room: INITIALROOM
		dragon_room: DRAGONROOM
		silver_chest: SILVERCHEST
		gold_chest: GOLDCHEST
		action:STRING
		i: INTEGER
		controller: CONTROLLER
	do
		LOCATION:= "TreasureRoom"

		create controller.make

		controller.updateview("This room looks quiet the same as the previous one.%N Your wandering eyes notice two chest lying in the corners of the room%N. One chest is Gold and the other is Silver%N But BE WARNED: Legend says there's death inside one of those chests.%N %N You can go to the initial room by walking SOUTH. %N Only the dragon knows which chest has the key%N There is another room on the EAST which has light%N")
		controller.updateview ("Your options: %NGo back SOUTH to Treasure Room%N. %N OR %N Go EAST to Dragon Room%N Goto Silver Chest%N Goto Gold Chest %N")

		controller.controller (LOCATION)

	end

end
