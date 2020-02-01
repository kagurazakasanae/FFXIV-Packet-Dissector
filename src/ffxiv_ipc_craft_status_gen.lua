-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local ffxiv_ipc_craft_status = Proto("ffxiv_ipc_craft_status", "FFXIV-IPC CraftStatus")

local craft_status_fields = {
  character_id = ProtoField.uint32("ffxiv_ipc_craft_status.character_id", "CharacterID", base.DEC),
  unknown1     = ProtoField.uint32("ffxiv_ipc_craft_status.unknown1", "Unknown1", base.DEC),
  unknown2     = ProtoField.uint16("ffxiv_ipc_craft_status.unknown2", "Unknown2", base.DEC),
  unknown3     = ProtoField.uint16("ffxiv_ipc_craft_status.unknown3", "Unknown3", base.DEC),
  unknown4     = ProtoField.uint32("ffxiv_ipc_craft_status.unknown4", "Unknown4", base.DEC),
  unknown5     = ProtoField.uint16("ffxiv_ipc_craft_status.unknown5", "Unknown5", base.DEC),
  unknown6     = ProtoField.uint16("ffxiv_ipc_craft_status.unknown6", "Unknown6", base.DEC),
  unknown7     = ProtoField.uint32("ffxiv_ipc_craft_status.unknown7", "Unknown7", base.DEC),
  action       = ProtoField.uint32("ffxiv_ipc_craft_status.action", "Action", base.DEC, db.Action),
  unknown8     = ProtoField.uint32("ffxiv_ipc_craft_status.unknown8", "Unknown8", base.DEC),
  unknown9     = ProtoField.uint32("ffxiv_ipc_craft_status.unknown9", "Unknown9", base.DEC),
}

ffxiv_ipc_craft_status.fields = craft_status_fields

function ffxiv_ipc_craft_status.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_craft_status, tvbuf)
  pktinfo.cols.info:set("CraftStatus")

  local len = tvbuf:len()

  -- dissect the character_id field
  local character_id_tvbr = tvbuf:range(0, 4)
  local character_id_val  = character_id_tvbr:le_uint()
  tree:add_le(craft_status_fields.character_id, character_id_tvbr, character_id_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(4, 4)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(8, 2)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown2, unknown2_tvbr, unknown2_val)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(10, 2)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown3, unknown3_tvbr, unknown3_val)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(12, 4)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown4, unknown4_tvbr, unknown4_val)

  -- dissect the unknown5 field
  local unknown5_tvbr = tvbuf:range(16, 2)
  local unknown5_val  = unknown5_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown5, unknown5_tvbr, unknown5_val)

  -- dissect the unknown6 field
  local unknown6_tvbr = tvbuf:range(18, 2)
  local unknown6_val  = unknown6_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown6, unknown6_tvbr, unknown6_val)

  -- dissect the unknown7 field
  local unknown7_tvbr = tvbuf:range(20, 4)
  local unknown7_val  = unknown7_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown7, unknown7_tvbr, unknown7_val)

  -- dissect the action field
  local action_tvbr = tvbuf:range(12, 4)
  local action_val  = action_tvbr:le_uint()
  tree:add_le(craft_status_fields.action, action_tvbr, action_val)

  -- dissect the unknown8 field
  local unknown8_tvbr = tvbuf:range(16, 4)
  local unknown8_val  = unknown8_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown8, unknown8_tvbr, unknown8_val)

  -- dissect the unknown9 field
  local unknown9_tvbr = tvbuf:range(20, 4)
  local unknown9_val  = unknown9_tvbr:le_uint()
  tree:add_le(craft_status_fields.unknown9, unknown9_tvbr, unknown9_val)

  return len
end