-- This file is generated by tools/json2lua.js

local ffxiv_ipc_actor_set_pos = Proto("ffxiv_ipc_actor_set_pos", "FFXIV-IPC Actor Set Pos")

local actor_set_pos_fields = {
  r16           = ProtoField.uint16("ffxiv_ipc_actor_set_pos.r16", "r16", base.DEC),
  wait_for_load = ProtoField.uint8("ffxiv_ipc_actor_set_pos.wait_for_load", "waitForLoad", base.DEC),
  unknown1      = ProtoField.uint8("ffxiv_ipc_actor_set_pos.unknown1", "unknown1", base.DEC),
  unknown2      = ProtoField.uint32("ffxiv_ipc_actor_set_pos.unknown2", "unknown2", base.DEC),
  x             = ProtoField.float("ffxiv_ipc_actor_set_pos.x", "x", base.DEC),
  y             = ProtoField.float("ffxiv_ipc_actor_set_pos.y", "y", base.DEC),
  z             = ProtoField.float("ffxiv_ipc_actor_set_pos.z", "z", base.DEC),
  unknown3      = ProtoField.uint32("ffxiv_ipc_actor_set_pos.unknown3", "unknown3", base.DEC),
}

ffxiv_ipc_actor_set_pos.fields = actor_set_pos_fields

function ffxiv_ipc_actor_set_pos.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_actor_set_pos, tvbuf)
  pktinfo.cols.info:set("Actor Set Pos")

  local len = tvbuf:len()

  -- dissect the r16 field
  local r16_tvbr = tvbuf:range(0, 2)
  local r16_val  = r16_tvbr:le_uint()
  tree:add_le(actor_set_pos_fields.r16, r16_tvbr, r16_val)

  -- dissect the wait_for_load field
  local wait_for_load_tvbr = tvbuf:range(2, 1)
  local wait_for_load_val  = wait_for_load_tvbr:le_uint()
  tree:add_le(actor_set_pos_fields.wait_for_load, wait_for_load_tvbr, wait_for_load_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(3, 1)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(actor_set_pos_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(4, 4)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(actor_set_pos_fields.unknown2, unknown2_tvbr, unknown2_val)

  -- dissect the x field
  local x_tvbr = tvbuf:range(8, 4)
  local x_val  = x_tvbr:le_float()
  tree:add_le(actor_set_pos_fields.x, x_tvbr, x_val)

  -- dissect the y field
  local y_tvbr = tvbuf:range(12, 4)
  local y_val  = y_tvbr:le_float()
  tree:add_le(actor_set_pos_fields.y, y_tvbr, y_val)

  -- dissect the z field
  local z_tvbr = tvbuf:range(16, 4)
  local z_val  = z_tvbr:le_float()
  tree:add_le(actor_set_pos_fields.z, z_tvbr, z_val)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(20, 4)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(actor_set_pos_fields.unknown3, unknown3_tvbr, unknown3_val)

  return len
end