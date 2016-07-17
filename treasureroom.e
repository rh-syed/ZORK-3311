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
		i: INTEGER
	do
		print ("This room looks quiet the same as the previous one. You can go to the initial room by walking SOUTH. %NThere is another room on the EAST which has light%N")
		print ("Your options: %NGo back SOUTH to Treasure Room%N. %N OR %N Go EAST to Dragon Room%N")

			from
				i := 0
			until
				i < 0
			loop
				io.read_line
				action := io.last_string

				if (equal( action, "SOUTH"))
				then
					create	initial_room.make
					i:= -1
				elseif (equal( action, "EAST"))
				then
					create dragon_room.make
					i:=-1
				else
					print ("Invalid Entry, Please try again%N")
				end

			end





	end

end
