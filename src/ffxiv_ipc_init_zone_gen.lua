-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local ffxiv_ipc_init_zone = Proto("ffxiv_ipc_init_zone", "FFXIV-IPC Init Zone")

local init_zone_fields = {
  server_id              = ProtoField.uint16("ffxiv_ipc_init_zone.server_id", "serverId", base.DEC),
  zone_id                = ProtoField.uint16("ffxiv_ipc_init_zone.zone_id", "zoneId", base.DEC, db.TerritoryType),
  unknown1               = ProtoField.uint16("ffxiv_ipc_init_zone.unknown1", "unknown1", base.DEC),
  content                = ProtoField.uint16("ffxiv_ipc_init_zone.content", "Content", base.DEC, db.ContentFinderCondition),
  unknown3               = ProtoField.uint32("ffxiv_ipc_init_zone.unknown3", "unknown3", base.DEC),
  unknown4               = ProtoField.uint32("ffxiv_ipc_init_zone.unknown4", "unknown4", base.DEC),
  weather_id             = ProtoField.uint8("ffxiv_ipc_init_zone.weather_id", "weatherId", base.DEC),
  bitmask                = ProtoField.uint8("ffxiv_ipc_init_zone.bitmask", "bitmask", base.DEC),
  bitmask1               = ProtoField.uint8("ffxiv_ipc_init_zone.bitmask1", "bitmask1", base.DEC),
  unknown5               = ProtoField.uint8("ffxiv_ipc_init_zone.unknown5", "unknown5", base.DEC),
  unknown8               = ProtoField.uint32("ffxiv_ipc_init_zone.unknown8", "unknown8", base.DEC),
  festival_id            = ProtoField.uint16("ffxiv_ipc_init_zone.festival_id", "festivalId", base.DEC),
  additional_festival_id = ProtoField.uint16("ffxiv_ipc_init_zone.additional_festival_id", "additionalFestivalId", base.DEC),
  unknown9               = ProtoField.uint32("ffxiv_ipc_init_zone.unknown9", "unknown9", base.DEC),
  unknown10              = ProtoField.uint32("ffxiv_ipc_init_zone.unknown10", "unknown10", base.DEC),
  unknown11              = ProtoField.uint32("ffxiv_ipc_init_zone.unknown11", "unknown11", base.DEC),
  unknown120             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown120", "unknown120", base.DEC),
  unknown121             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown121", "unknown121", base.DEC),
  unknown122             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown122", "unknown122", base.DEC),
  unknown123             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown123", "unknown123", base.DEC),
  unknown130             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown130", "unknown130", base.DEC),
  unknown131             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown131", "unknown131", base.DEC),
  unknown132             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown132", "unknown132", base.DEC),
  unknown140             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown140", "unknown140", base.DEC),
  unknown141             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown141", "unknown141", base.DEC),
  unknown142             = ProtoField.uint32("ffxiv_ipc_init_zone.unknown142", "unknown142", base.DEC),
  unknown15              = ProtoField.uint32("ffxiv_ipc_init_zone.unknown15", "unknown15", base.DEC),
}

ffxiv_ipc_init_zone.fields = init_zone_fields

function ffxiv_ipc_init_zone.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_init_zone, tvbuf)
  pktinfo.cols.info:set("Init Zone")

  local len = tvbuf:len()

  -- dissect the server_id field
  local server_id_tvbr = tvbuf:range(0, 2)
  local server_id_val  = server_id_tvbr:le_uint()
  tree:add_le(init_zone_fields.server_id, server_id_tvbr, server_id_val)

  -- dissect the zone_id field
  local zone_id_tvbr = tvbuf:range(2, 2)
  local zone_id_val  = zone_id_tvbr:le_uint()
  tree:add_le(init_zone_fields.zone_id, zone_id_tvbr, zone_id_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(4, 2)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the content field
  local content_tvbr = tvbuf:range(6, 2)
  local content_val  = content_tvbr:le_uint()
  tree:add_le(init_zone_fields.content, content_tvbr, content_val)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(8, 4)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown3, unknown3_tvbr, unknown3_val)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(12, 4)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown4, unknown4_tvbr, unknown4_val)

  -- dissect the weather_id field
  local weather_id_tvbr = tvbuf:range(16, 1)
  local weather_id_val  = weather_id_tvbr:le_uint()
  tree:add_le(init_zone_fields.weather_id, weather_id_tvbr, weather_id_val)

  -- dissect the bitmask field
  local bitmask_tvbr = tvbuf:range(17, 1)
  local bitmask_val  = bitmask_tvbr:le_uint()
  tree:add_le(init_zone_fields.bitmask, bitmask_tvbr, bitmask_val)

  -- dissect the bitmask1 field
  local bitmask1_tvbr = tvbuf:range(18, 1)
  local bitmask1_val  = bitmask1_tvbr:le_uint()
  tree:add_le(init_zone_fields.bitmask1, bitmask1_tvbr, bitmask1_val)

  -- dissect the unknown5 field
  local unknown5_tvbr = tvbuf:range(19, 1)
  local unknown5_val  = unknown5_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown5, unknown5_tvbr, unknown5_val)

  -- dissect the unknown8 field
  local unknown8_tvbr = tvbuf:range(20, 4)
  local unknown8_val  = unknown8_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown8, unknown8_tvbr, unknown8_val)

  -- dissect the festival_id field
  local festival_id_tvbr = tvbuf:range(24, 2)
  local festival_id_val  = festival_id_tvbr:le_uint()
  tree:add_le(init_zone_fields.festival_id, festival_id_tvbr, festival_id_val)

  -- dissect the additional_festival_id field
  local additional_festival_id_tvbr = tvbuf:range(26, 2)
  local additional_festival_id_val  = additional_festival_id_tvbr:le_uint()
  tree:add_le(init_zone_fields.additional_festival_id, additional_festival_id_tvbr, additional_festival_id_val)

  -- dissect the unknown9 field
  local unknown9_tvbr = tvbuf:range(28, 4)
  local unknown9_val  = unknown9_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown9, unknown9_tvbr, unknown9_val)

  -- dissect the unknown10 field
  local unknown10_tvbr = tvbuf:range(32, 4)
  local unknown10_val  = unknown10_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown10, unknown10_tvbr, unknown10_val)

  -- dissect the unknown11 field
  local unknown11_tvbr = tvbuf:range(36, 4)
  local unknown11_val  = unknown11_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown11, unknown11_tvbr, unknown11_val)

  -- dissect the unknown120 field
  local unknown120_tvbr = tvbuf:range(40, 4)
  local unknown120_val  = unknown120_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown120, unknown120_tvbr, unknown120_val)

  -- dissect the unknown121 field
  local unknown121_tvbr = tvbuf:range(44, 4)
  local unknown121_val  = unknown121_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown121, unknown121_tvbr, unknown121_val)

  -- dissect the unknown122 field
  local unknown122_tvbr = tvbuf:range(48, 4)
  local unknown122_val  = unknown122_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown122, unknown122_tvbr, unknown122_val)

  -- dissect the unknown123 field
  local unknown123_tvbr = tvbuf:range(52, 4)
  local unknown123_val  = unknown123_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown123, unknown123_tvbr, unknown123_val)

  -- dissect the unknown130 field
  local unknown130_tvbr = tvbuf:range(56, 4)
  local unknown130_val  = unknown130_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown130, unknown130_tvbr, unknown130_val)

  -- dissect the unknown131 field
  local unknown131_tvbr = tvbuf:range(60, 4)
  local unknown131_val  = unknown131_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown131, unknown131_tvbr, unknown131_val)

  -- dissect the unknown132 field
  local unknown132_tvbr = tvbuf:range(64, 4)
  local unknown132_val  = unknown132_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown132, unknown132_tvbr, unknown132_val)

  -- dissect position3
  local position3_dissector = Dissector.get('ffxiv_ipc_position3')
  local position3_pos = 68
  local position3_len = 12
  local position3_count = 1

  while position3_pos + position3_len <= len do
    local position3_tvbr = tvbuf:range(position3_pos, 12)
    position3_dissector:call(position3_tvbr:tvb(), pktinfo, root)
    position3_pos = position3_pos + position3_len
    position3_count = position3_count - 1
    if position3_count <= 0 then
      break
    end
  end

  -- dissect the unknown140 field
  local unknown140_tvbr = tvbuf:range(80, 4)
  local unknown140_val  = unknown140_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown140, unknown140_tvbr, unknown140_val)

  -- dissect the unknown141 field
  local unknown141_tvbr = tvbuf:range(84, 4)
  local unknown141_val  = unknown141_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown141, unknown141_tvbr, unknown141_val)

  -- dissect the unknown142 field
  local unknown142_tvbr = tvbuf:range(88, 4)
  local unknown142_val  = unknown142_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown142, unknown142_tvbr, unknown142_val)

  -- dissect the unknown15 field
  local unknown15_tvbr = tvbuf:range(92, 4)
  local unknown15_val  = unknown15_tvbr:le_uint()
  tree:add_le(init_zone_fields.unknown15, unknown15_tvbr, unknown15_val)

  return len
end