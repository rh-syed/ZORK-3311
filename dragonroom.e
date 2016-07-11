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
	do
		print ("You can reach the treasure room by walking on the WEST%N")
		io.read_line

		action:= io.last_string

		if (equal( action, "WEST"))then
			create treasure_room.make
		end
	end

end
