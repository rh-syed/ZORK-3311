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

	LOCATION: STRING

	make

	local
		controller: CONTROLLER
	do
		LOCATION := "DragonRoom"
		create controller.make
		controller.updateview ("You can reach the treasure room by walking on the WEST%N")
		controller.controller (LOCATION)
	end
end
