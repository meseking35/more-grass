--moregrass
--adds more uses for grass into the game
--created by meseking


------------------------------------------------------------------------
--GRASS
------------------------------------------------------------------------

-----------------------------------------------------------
--Grass Block
-----------------------------------------------------------
minetest.register_node("moregrass:grassblock", {
	description = "Grassblock",
	tiles = {
		"moregrass_grass.png", -- top
		"moregrass_grass.png", -- bottom
		"moregrass_grass.png", -- right
		"moregrass_grass.png", -- left
		"moregrass_grass.png", -- back
		"moregrass_grass.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})


-----------------------------------------------------------
--Grass with Flowers
-----------------------------------------------------------
minetest.register_node("moregrass:flowersgrass", {
	description = "Grass with flowers",
	tiles = {
		"moregrass_flowersgrass.png", -- top
		"moregrass_dirt.png", -- bottom
		"moregrass_grass_side.png", -- right
		"moregrass_grass_side.png", -- left
		"moregrass_grass_side.png", -- back
		"moregrass_grass_side.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})

-----------------------------------------------------------
--Grass with concrete edge
-----------------------------------------------------------
minetest.register_node("moregrass:grass_with_concrete", {
	description = "Grass with a concrete edge",
	tiles = {
		"moregrass_grass_with_concrete.png", -- top
		"moregrass_concrete.png", -- bottom
		"moregrass_grass.png", -- right
		"moregrass_concrete.png", -- left
		"moregrass_grass_with_concrete_back.png", -- back
		"moregrass_grass_with_concrete.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})

-----------------------------------------------------------
--rotatable dirt_with_grass
-----------------------------------------------------------
minetest.register_node("moregrass:rotatable_dirt_with_grass", {
	description = "Rotatable Grass",
	tiles = {
		"moregrass_grass.png", -- top
		"moregrass_dirt.png", -- bottom
		"moregrass_grass_side.png", -- right
		"moregrass_grass_side.png", -- left
		"moregrass_grass_side.png", -- back
		"moregrass_grass_side.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})



------------------------------------------------------------------------
--DRY GRASS
------------------------------------------------------------------------



-----------------------------------------------------------
--Dry Grass Block
-----------------------------------------------------------
minetest.register_node("moregrass:dry_grassblock", {
	description = "Dry grass block",
	tiles = {
		"moregrass_dry_grass.png", -- top
		"moregrass_dry_grass.png", -- bottom
		"moregrass_dry_grass.png", -- right
		"moregrass_dry_grass.png", -- left
		"moregrass_dry_grass.png", -- back
		"moregrass_dry_grass.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})


-----------------------------------------------------------
--Dry Grass with Flowers
-----------------------------------------------------------
minetest.register_node("moregrass:flowersdry_grass", {
	description = "Dry grass block with flowers",
	tiles = {
		"moregrass_flowersdry_grass.png", -- top
		"moregrass_dirt.png", -- bottom
		"moregrass_dry_grass_side.png", -- right
		"moregrass_dry_grass_side.png", -- left
		"moregrass_dry_grass_side.png", -- back
		"moregrass_dry_grass_side.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})

-----------------------------------------------------------
--Dry Grass with Concrete Edge
-----------------------------------------------------------
minetest.register_node("moregrass:dry_grass_with_concrete", {
	description = "Dry grass with a concrete edge",
	tiles = {
		"moregrass_dry_grass_with_concrete.png", -- top
		"moregrass_concrete.png", -- bottom
		"moregrass_dry_grass.png", -- right
		"moregrass_concrete.png", -- left
		"moregrass_dry_grass_with_concrete_back.png", -- back
		"moregrass_dry_grass_with_concrete.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})

-----------------------------------------------------------
--Rotatable Dry Grass
-----------------------------------------------------------
minetest.register_node("moregrass:rotatable_dirt_with_dry_grass", {
	description = "Rotatable dry grass",
	tiles = {
		"moregrass_dry_grass.png", -- top
		"moregrass_dirt.png", -- bottom
		"moregrass_dry_grass_side.png", -- right
		"moregrass_dry_grass_side.png", -- left
		"moregrass_dry_grass_side.png", -- back
		"moregrass_dry_grass_side.png"  -- front
},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
})