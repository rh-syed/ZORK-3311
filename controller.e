note
	description: "Summary description for {CONTROLLER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CONTROLLER

	create
	make

	feature {ANY}
	make
	do
		--create view.make

		--view.output ("WELCOME TO ZORK")
	end

	controller (loc: STRING)
	local
		action: STRING
		i: INTEGER
		LOCATION: STRING
		initial_room: INITIALROOM
		dragon_room: DRAGONROOM
		silver_chest: SILVERCHEST
		gold_chest:GOLDCHEST
		treasure_room: TREASUREROOM
		door: DOOR
		dragon: DRAGON
		do

			from i:=0
			until
				i < 0
			loop
				io.read_line
				action := io.last_string

				if ((equal( action, "NORTH") AND equal (loc, "InitialRoom")) OR (equal (action, "WEST") AND
																								equal (loc, "DragonRoom") ))
				then
					create	treasure_room.make
					LOCATION := "TreasureRoom"
					i := -1
				elseif (equal (action, "Goto Door") AND equal (loc, "InitialRoom") )then
					create door.make
					i:= -1
				elseif (equal (action, "EAST") AND equal (loc, "TreasureRoom")) then
					create dragon_room.make
					i:=-1
				elseif (equal (action, "SOUTH") AND equal (loc, "TreasureRoom")) then
					create initial_room.make
					i:=-1
				elseif (equal (action, "Goto Silver Chest") AND equal (loc, "TreasureRoom")) then
					create silver_chest.make
					i:=-1
				elseif (equal (action, "Goto Gold Chest") AND equal (loc, "TreasureRoom")) then
					create gold_chest.make
					i:=-1
				elseif (equal (action, "Open Gold Chest") AND equal (loc, "TreasureRoom")) then
					create gold_chest.make
					gold_chest.open_gold_chest --put this in try catch
				 	i:=-1
				elseif (equal (action, "Open Silver Chest") AND equal (loc, "TreasureRoom")) then
					create silver_chest.make
					silver_chest.open_silver_chest --put this in try catch
					i:=-1

				-- dragon commands
				elseif (equal (action, "Hi") AND equal (loc, "DragonRoom")) then
					create dragon.make
					dragon.greetings
					i:=-1
				elseif (equal (action, "Help") AND equal (loc, "DragonRoom")) then
					create dragon.make
					dragon.hint
					i:=-1
				elseif (equal (action, "Enigma") AND equal (loc, "DragonRoom")) then
					create dragon.make
					dragon.enigma
					i:=-1
				elseif (equal (action, "Answer") AND equal (loc, "DragonRoom")) then
					create dragon.make
					dragon.answer
					i:=-1
				elseif (equal (action, "Skull") AND equal (loc, "DragonRoom")) then
					create dragon.make
					dragon.solution
					i:=-1
				else
					print ("Invalid Entry. Please try again%N")
				end

			end
		end

	updateView (output: STRING)
	local
		view: VIEW
	do
		create view.make
		view.output (output + "%N")
	end
	getInstance: CONTROLLER
	do
		result:= current
	end

end
