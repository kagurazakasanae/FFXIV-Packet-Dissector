-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local ffxiv_ipc_skill_handler = Proto("ffxiv_ipc_skill_handler", "FFXIV-IPC Skill Handler")

local skill_handler_fields = {
  pad_0000              = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_0000", "pad_0000", base.DEC),
  type                  = ProtoField.uint8("ffxiv_ipc_skill_handler.type", "type", base.DEC),
  pad_00020             = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_00020", "pad_00020", base.DEC),
  pad_00021             = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_00021", "pad_00021", base.DEC),
  action                = ProtoField.uint32("ffxiv_ipc_skill_handler.action", "Action", base.DEC, db.Action),
  sequence              = ProtoField.uint16("ffxiv_ipc_skill_handler.sequence", "sequence", base.DEC),
  pad_000_c0            = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_000_c0", "pad_000C0", base.DEC),
  pad_000_c1            = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_000_c1", "pad_000C1", base.DEC),
  pad_000_c2            = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_000_c2", "pad_000C2", base.DEC),
  pad_000_c3            = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_000_c3", "pad_000C3", base.DEC),
  pad_000_c4            = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_000_c4", "pad_000C4", base.DEC),
  pad_000_c5            = ProtoField.uint8("ffxiv_ipc_skill_handler.pad_000_c5", "pad_000C5", base.DEC),
  target_id             = ProtoField.uint32("ffxiv_ipc_skill_handler.target_id", "targetId", base.HEX),
  unknown1              = ProtoField.uint32("ffxiv_ipc_skill_handler.unknown1", "unknown1", base.DEC),
  item_source_slot      = ProtoField.uint16("ffxiv_ipc_skill_handler.item_source_slot", "itemSourceSlot", base.DEC),
  item_source_container = ProtoField.uint16("ffxiv_ipc_skill_handler.item_source_container", "itemSourceContainer", base.DEC),
  unknown               = ProtoField.uint32("ffxiv_ipc_skill_handler.unknown", "unknown", base.DEC),
}

ffxiv_ipc_skill_handler.fields = skill_handler_fields

function ffxiv_ipc_skill_handler.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_skill_handler, tvbuf)
  pktinfo.cols.info:set("Skill Handler")

  local len = tvbuf:len()

  -- dissect the pad_0000 field
  local pad_0000_tvbr = tvbuf:range(0, 1)
  local pad_0000_val  = pad_0000_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_0000, pad_0000_tvbr, pad_0000_val)

  -- dissect the type field
  local type_tvbr = tvbuf:range(1, 1)
  local type_val  = type_tvbr:le_uint()
  tree:add_le(skill_handler_fields.type, type_tvbr, type_val)

  -- dissect the pad_00020 field
  local pad_00020_tvbr = tvbuf:range(2, 1)
  local pad_00020_val  = pad_00020_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_00020, pad_00020_tvbr, pad_00020_val)

  -- dissect the pad_00021 field
  local pad_00021_tvbr = tvbuf:range(3, 1)
  local pad_00021_val  = pad_00021_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_00021, pad_00021_tvbr, pad_00021_val)

  -- dissect the action field
  local action_tvbr = tvbuf:range(4, 4)
  local action_val  = action_tvbr:le_uint()
  tree:add_le(skill_handler_fields.action, action_tvbr, action_val)

  -- dissect the sequence field
  local sequence_tvbr = tvbuf:range(8, 2)
  local sequence_val  = sequence_tvbr:le_uint()
  tree:add_le(skill_handler_fields.sequence, sequence_tvbr, sequence_val)

  -- dissect the pad_000_c0 field
  local pad_000_c0_tvbr = tvbuf:range(10, 1)
  local pad_000_c0_val  = pad_000_c0_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_000_c0, pad_000_c0_tvbr, pad_000_c0_val)

  -- dissect the pad_000_c1 field
  local pad_000_c1_tvbr = tvbuf:range(11, 1)
  local pad_000_c1_val  = pad_000_c1_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_000_c1, pad_000_c1_tvbr, pad_000_c1_val)

  -- dissect the pad_000_c2 field
  local pad_000_c2_tvbr = tvbuf:range(12, 1)
  local pad_000_c2_val  = pad_000_c2_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_000_c2, pad_000_c2_tvbr, pad_000_c2_val)

  -- dissect the pad_000_c3 field
  local pad_000_c3_tvbr = tvbuf:range(13, 1)
  local pad_000_c3_val  = pad_000_c3_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_000_c3, pad_000_c3_tvbr, pad_000_c3_val)

  -- dissect the pad_000_c4 field
  local pad_000_c4_tvbr = tvbuf:range(14, 1)
  local pad_000_c4_val  = pad_000_c4_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_000_c4, pad_000_c4_tvbr, pad_000_c4_val)

  -- dissect the pad_000_c5 field
  local pad_000_c5_tvbr = tvbuf:range(15, 1)
  local pad_000_c5_val  = pad_000_c5_tvbr:le_uint()
  tree:add_le(skill_handler_fields.pad_000_c5, pad_000_c5_tvbr, pad_000_c5_val)

  -- dissect the target_id field
  local target_id_tvbr = tvbuf:range(16, 4)
  local target_id_val  = target_id_tvbr:le_uint()
  tree:add_le(skill_handler_fields.target_id, target_id_tvbr, target_id_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(20, 4)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(skill_handler_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the item_source_slot field
  local item_source_slot_tvbr = tvbuf:range(24, 2)
  local item_source_slot_val  = item_source_slot_tvbr:le_uint()
  tree:add_le(skill_handler_fields.item_source_slot, item_source_slot_tvbr, item_source_slot_val)

  -- dissect the item_source_container field
  local item_source_container_tvbr = tvbuf:range(26, 2)
  local item_source_container_val  = item_source_container_tvbr:le_uint()
  tree:add_le(skill_handler_fields.item_source_container, item_source_container_tvbr, item_source_container_val)

  -- dissect the unknown field
  local unknown_tvbr = tvbuf:range(28, 4)
  local unknown_val  = unknown_tvbr:le_uint()
  tree:add_le(skill_handler_fields.unknown, unknown_tvbr, unknown_val)

  return len
end