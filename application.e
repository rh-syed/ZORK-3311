note
	description: "Zork application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
		local
			initial_room: INITIALROOM
			controller: CONTROLLER
			view: VIEW
			-- Run application.
		do
			--| Add your code here
			create controller.make

			controller.updateview("========================WELCOME TO ZORK ADVENTURES========================")
			create initial_room.make



		end

end
