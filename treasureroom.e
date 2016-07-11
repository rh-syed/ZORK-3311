note
	description: "Summary description for {TREASUREROOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TREASUREROOM

	create make

	feature {ANY}

	make
	local
		initial_room: INITIALROOM
		dragon_room: DRAGONROOM
		action:STRING
	do
		print ("This room looks quiet the same as the previous one. You can go to the initial room by walking SOUTH. %NThere is another room on the EAST which has light%N")
		print ("Your options: Go back SOUTH to Treasure Room%N. OR Go EAST to Dragon Room%N")

			io.read_line
			action := io.last_string

			if (equal( action, "SOUTH"))
			then
				create	initial_room.make
			end
			if (equal( action, "EAST"))then
				create dragon_room.make
			end


	end

end
