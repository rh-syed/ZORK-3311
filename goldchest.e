note
	description: "Summary description for {SILVERCHEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GOLDCHEST

create make

feature {ANY}

	make
	local
		action: STRING
		i: INTEGER
	do
		print ("A beautiful Gold chest. It is so shiny that you could see yourself in it.%N. Crap! I look horrible. Don't remember how long it's been since I took shower...%N")

		from
			i:=0
		until
			i < 0
		loop
			io.read_line
			action := io.last_string

		if (equal( action, "Open Gold Chest"))
		then
			current.open_gold_chest
			i := -1
		else
			print ("Invalid Entry. Please try again%N")
		end

		end --loop end
	end
	open_gold_chest
	do
			print ("The chest is now open. There's a key in here%N")
	end
end
