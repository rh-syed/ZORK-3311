note
	description: "Summary description for {DRAGONROOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DRAGONROOM

	create
	make

	feature {ANY}

	make

	local
		action:STRING
		treasure_room: TREASUREROOM
		i: INTEGER
	do
		print ("You can reach the treasure room by walking on the WEST%N")

		from
			i:=0
		until
			i < 0
		loop
			io.read_line
			action:= io.last_string

			if (equal( action, "WEST"))then
				create treasure_room.make
				i :=-1
			else
				print ("Invalid input, please try again%N")
			end
		end

	end

end
