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
			controller: CONTROLLER
		do
			LOCATION := "InitialRoom"
			create controller.make
			controller.updateview("You are alone in a strange Room.%N You can see a big wooden door on SOUTH%N")
			controller.updateview("Your options: %NNORTH to Treasure Room.%NGoto DOOR%N")
			controller.controller (LOCATION)
		end

end
