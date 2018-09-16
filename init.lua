--
-- admin_blocks - Prevent random players griefing with "n00b blocks".
--

admin_blocks = {
    disallowed_msg = 'You may not place that block!',
    disallowed_dig = 'You may not pick that block up!'
}

-- Restricted items
local restricted_items = {
    'bucket:bucket_lava',
    'technic:lava_can',
    'technic:corium_source',
    'gloopblocks:rainbow_block_horizontal',
    'gloopblocks:rainbow_block_diagonal',
    'yaycat:yaycat',
    'yaycatrainbow:yaycatrainbow',
    'default:lava_source',
    'default:water_source',
    'default:river_water_source',
    'fire:basic_flame',
    'fire:permanent_flame',
}

-- Record a violation
admin_blocks.record_violation = function(name, node, dig, itemstack)
	local msg = 'tried placing "n00b block"'
	if dig then
		msg = 'tried using a bucket on the "n00b block"'
	end
	minetest.log('action', 'Player ' .. name ..
		' ' .. msg .. ' ' .. node .. '.')
	minetest.chat_send_player(name, admin_blocks['disallowed_' ..
        (dig and 'dig' or 'msg')])
	return itemstack
end

-- Is the player trusted?
admin_blocks.is_trusted = function(name)
    return minetest.check_player_privs(name, {trusted = true})
end

-- Restrict an item
admin_blocks.restrict_item = function(node)
    local def = minetest.registered_items[node]
    if not def then return end

    local on_place = def.on_place
    if not on_place then
        on_place = minetest.item_place
    end

    minetest.override_item(node, {
        on_place = function(itemstack, placer, pointed_thing)
			local name = placer:get_player_name()
			if not admin_blocks.is_trusted(name) then
				return admin_blocks.record_violation(name, node, false,
                    itemstack)
			else
				return on_place(itemstack, placer, pointed_thing)
			end
		end,
		_admin_blocks_restricted = true,
    })
end

-- Restrict a bucket
admin_blocks.restrict_empty_bucket = function(node)
    local def = minetest.registered_items[node]
    if not def then return end

    local on_use = def.on_use
    if not on_use then return end

    minetest.override_item(node, {
        on_use = function(itemstack, user, pointed_thing)
			if pointed_thing.type == 'node' then
				local lnode = minetest.get_node(pointed_thing.under).name
				local ldef  = minetest.registered_items[lnode]
                local name  = user:get_player_name()
				if ldef and ldef._admin_blocks_restricted and
                  not admin_blocks.is_trusted(name) then
					return admin_blocks.record_violation(name, lnode, true)
				end
			end
			return on_use(itemstack, user, pointed_thing)
		end,
		_admin_blocks_restricted = true,
    })
end

-- Add the 'trusted' priv
minetest.register_privilege("trusted", {
    description = 'Allows players to place "n00b blocks".',
    give_to_singleplayer = false
})

-- Iterate over the disallowed nodes list
for _, node in ipairs(restricted_items) do
	admin_blocks.restrict_item(node)
end

-- Restrict the empty bucket
admin_blocks.restrict_empty_bucket('bucket:bucket_empty')
