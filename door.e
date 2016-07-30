note
	description: "Summary description for {DOOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DOOR

	create make


	feature {ANY}

	KEY: BOOLEAN

	make
	local
	controller: CONTROLLER
	do
		KEY := false
		print ("A big wooden door. It has a lock.%N There is a sign above door that read: If it is upto be, it is upto me.%N")
	end

	open_door
	local
		hidden_room: HIDDENROOM
	do
		if KEY = true then
			print ("The door is now open.%N")
			create hidden_room.make
		else
			print ("You need a key to open door%N")
		end
	end

	set_key (flag:BOOLEAN)
	do
		KEY := true
	end

end
