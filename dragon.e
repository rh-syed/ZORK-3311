note
	description: "Summary description for {DRAGON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DRAGON

	create make

	feature {ANY}
	make
	local
		controller: CONTROLLER
	do
		create controller.make
		controller.updateView ("A fierce looking red dragon is standing here. He doesn't stop looing at you, looks like he wants to talk%N")
	end


	attack
	local
	controller: CONTROLLER
	do
		create controller.make

		controller.updateView ("You should not attack the dragon. He can spit Fire!%N")

	end

	kiss
	local
	controller: CONTROLLER
	do
		create controller.make
		controller.updateView ("Hmmmm I don't think that's a good idea....%N")
	end

	greetings
	local
	controller: CONTROLLER
	do
		create controller.make
		controller.updateView ("Hello Stranger.%N")
	end

	hint
	local
	controller: CONTROLLER
	do
		create controller.make
		controller.updateView ("The exit door is locked. To find the key, you must answer an enigma.%N If you are ready I can sing it!%N")
	end

	enigma
	--here you can have a lot of riddles and use random number generator.
	local
	controller: CONTROLLER
	do
		create controller.make
		controller.updateView (" I don't have eyes, but once I did see. Once I had thoughts, but now I'm white and empty%N")

	end

	answer
	local
	controller: CONTROLLER
	do
		create controller.make
		controller.updateView ("You must not give up that easily! If you don't find the answer, you are going to be locked in forever! DON'T USE GOOGLE, I WILL LITERALLY SMOKE YOU!")

	end

	solution
	local
	controller: CONTROLLER
	do
		create controller.make
		controller.updateView ("You cracked the enigma, Congratulations! The key is in the Golden Chest.")
		controller.updateView ("Watchout don't try to open the other one! Death will succumb you!")


	end

end
