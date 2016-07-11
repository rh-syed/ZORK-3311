note
	description: "Summary description for {INITIALROOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INITIALROOM


	create
	make

	feature {ANY}

	LOCATION: STRING

	make
		local
			action: STRING

			treasure_room: TREASUREROOM
			door: DOOR
		do
			LOCATION := "InitialRoom"
			print ("You are alone in a strange Room.%N You can see a big wooden door on SOUTH")
			print ("Your options: NORTH to Treasure Room.%N SOUTH to the DOOR%N")

			io.read_line
			action := io.last_string

			if (equal( action, "NORTH"))then
				create	treasure_room.make
				LOCATION := "TreasureRoom"
			end
			if (equal (action, "SOUTH"))then
				create door.make

			end

		end

end
