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
		controller: CONTROLLER
	do
		create controller.make
		controller.updateview ("A beautiful Gold chest. It is so shiny that you could see yourself in it.%N. Crap! I look horrible. Don't remember how long it's been since I took shower...%N")
		controller.controller ("TreasureRoom")
	end
	open_gold_chest
	local
	door: DOOR
	controller: CONTROLLER
	do
			print ("The chest is now open. There's a key in here%N")
			create door.make
			door.set_key (true)
			create controller.make
			controller.controller ("TreasureRoom")
	end
end
