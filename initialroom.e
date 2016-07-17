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
			i: INTEGER

			treasure_room: TREASUREROOM
			door: DOOR
		do
			LOCATION := "InitialRoom"
			print ("You are alone in a strange Room.%N You can see a big wooden door on SOUTH%N")
			print ("Your options: %N NORTH to Treasure Room.%N SOUTH to the DOOR%N")


			from i:=0
			until
				i < 0
			loop
				io.read_line
				action := io.last_string

				if (equal( action, "NORTH"))
				then
					create	treasure_room.make
					LOCATION := "TreasureRoom"
					i := -1
				elseif (equal (action, "SOUTH"))then
					create door.make
					i:= -1
				else
					print ("Invalid Entry. Please try again%N")
				end

			end


		end

end
