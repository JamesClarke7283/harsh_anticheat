function harsh_anticheat.hacked_client(name)
    local info = minetest.get_player_information(name)
	minetest.log("action", "[harsh_anticheat] Player " .. name .. " joined with info " .. minetest.serialize(info))
	local version = info.version_string

	if not version then
		-- version not available
		return
	end

	if version then
		-- version available
		minetest.log("action", "[harsh_anticrack] CHEAT Player " .. name .. " joined with version " .. version)
		xban.ban_player(name, "server-anticheat", os.time()+86400, "Cheat client detected! Banned for 24 hours")
	end
end