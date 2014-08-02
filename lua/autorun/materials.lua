-- The "material" entity modifier will now only apply materials if they are
-- present in the "OverrideMaterials" list. There are still old dupes that
-- features these materials so we manually add them to the list.

-- TODO: there should probably be a way to turn this off
AddCSLuaFile()

local materials = {
	"models/props_c17/metalladder001",
	"models/props_c17/metalladder002",
	"models/props_c17/metalladder003",
	"models/props_debris/metalwall001a",
	"models/props_canal/metalwall005b",
	"models/props_combine/metal_combinebridge001",
	"models/props_interiors/metalfence007a",
	"models/props_pipes/pipeset_metal02",
	"models/props_pipes/pipeset_metal",
	"models/props_wasteland/metal_tram001a",
	"models/props_canal/metalcrate001d",
	"models/props_wasteland/rockcliff02b",
	"models/props_wasteland/rockcliff02c",
	"models/props_wasteland/rockcliff04a",
	"models/props_wasteland/rockcliff02a",
	"models/props_wasteland/dirtwall001a",
	"models/props_foliage/oak_tree01",
	"models/props_combine/combinethumper002",
	"models/props_combine/tprotato1_sheet",
	"models/props_combine/pipes01",
	"models/combine_advisor/body9",
	"models/props_c17/furniturefabric002a",
	"models/props_debris/plasterwall021a",
	"models/props_debris/plasterwall009d",
	"models/props_debris/plasterwall034a",
	"models/props_debris/plasterwall039c",
	"models/props_debris/plasterwall040c",
	"models/props_debris/concretefloor013a",
	"models/props_wasteland/concretefloor010a",
	"models/props_debris/concretewall019a",
	"models/props_wasteland/concretewall064b",
	"models/props_wasteland/concretewall066a",
	"models/props_lab/warp_sheet",
	"models/combine_scanner/scanner_eye",
	"models/props_debris/building_template012d",
	"models/props_combine/tprings_sheet",
	"models/weapons/v_crowbar/crowbar_cyl",
	"models/weapons/v_stunbaton/w_shaft01a",
	"models/props_wasteland/lighthouse_stairs",
	"models/props_c17/frostedglass_01a_dx60",
	"models/props_canal/rock_riverbed01a",
	"models/props_canal/canalmap_sheet",
	"models/props_canal/coastmap_sheet",
	"models/effects/slimebubble_sheet",
	"models/props_lab/generatorconsole_disp",
	"models/props_combine/combine_interface_disp",
	"models/props_combine/health_charger_glass",
	"models/props_lab/xencrystal_sheet",
	"models/weapons/v_crossbow/rebar_glow",
	"models/props_combine/prtl_sky_sheet",
	"models/vortigaunt/pupil",
	"models/combine_advisor/mask",


	--PHX Materials
	"phoenix_storms/Airboat",
	"phoenix_storms/Blue_steel",
	"phoenix_storms/FuturisticTrackRamp_1-2",
	"phoenix_storms/Indenttiles2",
	"phoenix_storms/Indenttiles_1-2",
	"phoenix_storms/MetalSet_1-2",
	"phoenix_storms/Metalfloor_2-3",
	"phoenix_storms/OfficeWindow_1-1",
	"phoenix_storms/airboat_blur02",
	"phoenix_storms/amraam",
	"phoenix_storms/barrel",
	"phoenix_storms/black_chrome",
	"phoenix_storms/bluemetal",
	"phoenix_storms/bomb",
	"phoenix_storms/camera",
	"phoenix_storms/cannon",
	"phoenix_storms/car_tire",
	"phoenix_storms/chrome",
	"phoenix_storms/cigar",
	"phoenix_storms/cube",
	"phoenix_storms/dome",
	"phoenix_storms/dome_side",
	"phoenix_storms/egg",
	"phoenix_storms/explo_barrel",
	"phoenix_storms/fender",
	"phoenix_storms/fender_chrome",
	"phoenix_storms/fender_white",
	"phoenix_storms/fender_wood",
	"phoenix_storms/future_vents",
	"phoenix_storms/gear",
	"phoenix_storms/gear_top",
	"phoenix_storms/glass",
	"phoenix_storms/grey_chrome",
	"phoenix_storms/grey_steel",
	"phoenix_storms/heli",
	"phoenix_storms/iron_rails",
	"phoenix_storms/lag_sign",
	"phoenix_storms/metal",
	"phoenix_storms/metal_plate",
	"phoenix_storms/metal_wheel",
	"phoenix_storms/metalbox",
	"phoenix_storms/metalbox2",
	"phoenix_storms/metalfence004a",
	"phoenix_storms/middle",
	"phoenix_storms/mrref2",
	"phoenix_storms/mrtire",
	"phoenix_storms/output_jack",
	"phoenix_storms/plastic",
	"phoenix_storms/point1",
	"phoenix_storms/pack2/black",
	"phoenix_storms/pack2/bluelight",
	"phoenix_storms/pack2/chrome",
	"phoenix_storms/pack2/darkblue",
	"phoenix_storms/pack2/darkgrey",
	"phoenix_storms/pack2/glass",
	"phoenix_storms/pack2/interior_sides",
	"phoenix_storms/pack2/interior_top",
	"phoenix_storms/pack2/metalbox2",
	"phoenix_storms/pack2/panel",
	"phoenix_storms/pack2/redlight",
	"phoenix_storms/pack2/train_floor",


	--Even more materials from Material EX
	--HL2
	"models/airboat/airboat_blur02",
	"models/alyx/emptool_glow",
	"models/antlion/antlion_innards",
	"models/barnacle/roots",
	"models/dog/eyeglass",
	"models/effects/comball_glow1",
	"models/effects/comball_glow2",
	"models/effects/portalrift_sheet",
	"models/effects/splode1_sheet",
	"models/effects/splode_sheet",
	"models/error/new light1",
	"models/gibs/woodgibs/woodgibs01",
	"models/gibs/woodgibs/woodgibs02",
	"models/gibs/woodgibs/woodgibs03",
	"models/gibs/metalgibs/metal_gibs",
	"models/items/boxsniperrounds",
	"models/player/player_chrome1",
	"models/props_animated_breakable/smokestack/brickwall002a",
	"models/props_building_details/courtyard_template001c_bars",
	"models/props_buildings/destroyedbuilldingwall01a",
	"models/props_c17/furniturefabric001a",
	"models/props_c17/gate_door02a",
	"models/props_canal/canal_bridge_railing_01a",
	"models/props_canal/canal_bridge_railing_01b",
	"models/props_canal/canal_bridge_railing_01c",
	"models/props_combine/citadel_cable",
	"models/props_combine/citadel_cable_b",
	"models/props_combine/combine_monitorbay_disp",
	"models/props_combine/pipes03",
	"models/props_combine/stasisfield_beam",
	"models/props_debris/building_template010a",
	"models/props_debris/building_template022j",
	"models/props_debris/composite_debris",
	"models/props_debris/concretefloor020a",
	"models/props_debris/plasterceiling008a",
	"models/props_debris/plasterwall034d",
	"models/props_debris/tilefloor001c",
	"models/props_foliage/driftwood_01a",
	"models/props_junk/plasticcrate01a",
	"models/props_junk/plasticcrate01b",
	"models/props_junk/plasticcrate01c",
	"models/props_junk/plasticcrate01d",
	"models/props_junk/plasticcrate01e",
	"models/props_lab/cornerunit_cloud",
	"models/props_lab/door_klab01",
	"models/props_lab/security_screens",
	"models/props_lab/security_screens2",
	"models/props_pipes/destroyedpipes01a",
	"models/props_pipes/pipemetal001a",
	"models/props_pipes/pipesystem01a_skin1",
	"models/props_pipes/pipesystem01a_skin2",
	"models/props_vents/borealis_vent001",
	"models/props_vents/borealis_vent001b",
	"models/props_vents/borealis_vent001c",
	"models/props_wasteland/quarryobjects01",
	"models/props_wasteland/rockgranite02a",
	"models/props_wasteland/tugboat01",
	"models/props_wasteland/tugboat02",
	"models/props_wasteland/wood_fence01a_skin2",
	"models/roller/rollermine_glow",
	"models/weapons/v_grenade/grenade body",
	"models/weapons/v_smg1/texture5",
	"models/weapons/w_smg1/smg_crosshair",
	"models/weapons/v_slam/new light1",
	--Counter-Strike Source
	"models/props/cs_assault/dollar",
	"models/props/cs_assault/fireescapefloor",
	"models/props/cs_assault/metal_stairs1",
	"models/props/cs_assault/moneywrap",
	"models/props/cs_assault/moneywrap02",
	"models/props/cs_assault/moneytop",
	"models/props/cs_assault/pylon",
	"models/props/CS_militia/boulder01",
	"models/props/CS_militia/milceil001",
	"models/props/CS_militia/militiarock",
	"models/props/CS_militia/militiarockb",
	"models/props/CS_militia/milwall006",
	"models/props/CS_militia/rocks01",
	"models/props/CS_militia/roofbeams01",
	"models/props/CS_militia/roofbeams02",
	"models/props/CS_militia/roofbeams03",
	"models/props/CS_militia/RoofEdges",
	"models/props/cs_office/clouds",
	"models/props/cs_office/file_cabinet2",
	"models/props/cs_office/file_cabinet3",
	"models/props/cs_office/screen",
	"models/props/cs_office/snowmana",
	"models/props/de_inferno/de_inferno_boulder_03",
	"models/props/de_inferno/infflra",
	"models/props/de_inferno/infflrd",
	"models/props/de_inferno/inftowertop",
	"models/props/de_inferno/offwndwb_break",
	"models/props/de_inferno/roofbits",
	"models/props/de_inferno/tileroof01",
	"models/props/de_inferno/woodfloor008a",
	"models/props/de_nuke/nukconcretewalla",
	"models/props/de_nuke/nukecardboard",
	"models/shadertest/predator",

	--some more
	--COMBINE
	"models/props_combine/masterinterface01c",
	"models/props_combine/tpballglow",
	"models/props_combine/combine_door01_glass",
	"models/props_combine/Combine_Citadel001",
	"models/props_combine/combine_fenceglow",
	"models/props_combine/combine_intmonitor001_disp",
	"models/props_combine/masterinterface_alert",
	"models/props_combine/weaponstripper_sheet",
	"models/Combine_Helicopter/helicopter_bomb01",
	--STUFF
	"models/dav0r/hoverball",
	"models/props_junk/ravenholmsign_sheet",
	"models/props_junk/TrafficCone001a",
	"models/Items/boxart1",
	"models/props/de_tides/clouds",
	"models/props_c17/fisheyelens",
	"models/props/cs_office/offinspa",
	"models/props/cs_office/offinspb",
	"models/props/cs_office/offinspc",
	"models/props/cs_office/offinspd",
	"models/props/cs_office/offinspf",
	"models/props/cs_office/offinspg",
	"models/balloon/balloon_hl2",
	"models/balloon/balloon_nips",
	"models/balloon/balloon_milfman"
}

-- Get a list of all current materials so we don't add duplicates
local AllMats = {}
for _, material in pairs(list.Get("OverrideMaterials")) do
	AllMats[material] = true
end

for _, material in ipairs(materials) do
	if not AllMats[material] then list.Add("OverrideMaterials", material) end
end
