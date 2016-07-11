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

	make ()
		local
			action: STRING

			treasure_room: TREASUREROOM
		do
			LOCATION := "InitialRoom"
			print ("You are alone in a strange Room%N")
			print ("Your options: NORTH to Treasure Room%N")

			io.read_line
			action := io.last_string
			if (deep_equal( action, "NORTH"))then
			create	treasure_room.make
			LOCATION := "TreasureRoom"
			end



		end

end
