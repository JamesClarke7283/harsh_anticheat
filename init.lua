local modpath = minetest.get_modpath("harsh_anticheat")
harsh_anticheat = {}
dofile(modpath .. "/hacked_client.lua")

minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	harsh_anticheat.hacked_client(name)
end)
