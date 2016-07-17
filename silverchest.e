note
	description: "Summary description for {SILVERCHEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SILVERCHEST

create make

feature {ANY}


	make
	local
		i:INTEGER
		action: STRING
	do
		print ("A beautiful silver chest. It is so shiny that you could see yourself in it.%N. Crap! I look horrible. Don't remember how long it's been since I took shower...%N")

		from
			i:=0
		until
			i < 0
		loop
			io.read_line
			action := io.last_string

		if (equal( action, "Open Silver Chest"))
		then
			current.open_silver_chest
			i := -1
		else
			print ("Invalid Entry. Please try again%N")
		end

		end --loop end
	end

	open_silver_chest
	do
			print ("You opened death, a bright light from silver chest pierces through your soul and shreds into million pieces.%N")

	end
end
