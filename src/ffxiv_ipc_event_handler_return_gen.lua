-- This file is generated by tools/json2lua.js

local ffxiv_ipc_event_handler_return = Proto("ffxiv_ipc_event_handler_return", "FFXIV-IPC Event Handler Return")

local event_handler_return_fields = {
  event_id   = ProtoField.uint32("ffxiv_ipc_event_handler_return.event_id", "eventId", base.DEC),
  scene      = ProtoField.uint16("ffxiv_ipc_event_handler_return.scene", "scene", base.DEC),
  param1     = ProtoField.uint16("ffxiv_ipc_event_handler_return.param1", "param1", base.DEC),
  param2     = ProtoField.uint16("ffxiv_ipc_event_handler_return.param2", "param2", base.DEC),
  pad_000_a0 = ProtoField.uint8("ffxiv_ipc_event_handler_return.pad_000_a0", "pad_000A0", base.DEC),
  pad_000_a1 = ProtoField.uint8("ffxiv_ipc_event_handler_return.pad_000_a1", "pad_000A1", base.DEC),
  param3     = ProtoField.uint16("ffxiv_ipc_event_handler_return.param3", "param3", base.DEC),
  pad_000_e0 = ProtoField.uint8("ffxiv_ipc_event_handler_return.pad_000_e0", "pad_000E0", base.DEC),
  pad_000_e1 = ProtoField.uint8("ffxiv_ipc_event_handler_return.pad_000_e1", "pad_000E1", base.DEC),
  param4     = ProtoField.uint16("ffxiv_ipc_event_handler_return.param4", "param4", base.DEC),
}

ffxiv_ipc_event_handler_return.fields = event_handler_return_fields

function ffxiv_ipc_event_handler_return.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_event_handler_return, tvbuf)
  pktinfo.cols.info:set("Event Handler Return")

  -- dissect the event_id field
  local event_id_tvbr = tvbuf:range(0, 4)
  local event_id_val  = event_id_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.event_id, event_id_tvbr, event_id_val)

  -- dissect the scene field
  local scene_tvbr = tvbuf:range(4, 2)
  local scene_val  = scene_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.scene, scene_tvbr, scene_val)

  -- dissect the param1 field
  local param1_tvbr = tvbuf:range(6, 2)
  local param1_val  = param1_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.param1, param1_tvbr, param1_val)

  -- dissect the param2 field
  local param2_tvbr = tvbuf:range(8, 2)
  local param2_val  = param2_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.param2, param2_tvbr, param2_val)

  -- dissect the pad_000_a0 field
  local pad_000_a0_tvbr = tvbuf:range(10, 1)
  local pad_000_a0_val  = pad_000_a0_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.pad_000_a0, pad_000_a0_tvbr, pad_000_a0_val)

  -- dissect the pad_000_a1 field
  local pad_000_a1_tvbr = tvbuf:range(11, 1)
  local pad_000_a1_val  = pad_000_a1_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.pad_000_a1, pad_000_a1_tvbr, pad_000_a1_val)

  -- dissect the param3 field
  local param3_tvbr = tvbuf:range(12, 2)
  local param3_val  = param3_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.param3, param3_tvbr, param3_val)

  -- dissect the pad_000_e0 field
  local pad_000_e0_tvbr = tvbuf:range(14, 1)
  local pad_000_e0_val  = pad_000_e0_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.pad_000_e0, pad_000_e0_tvbr, pad_000_e0_val)

  -- dissect the pad_000_e1 field
  local pad_000_e1_tvbr = tvbuf:range(15, 1)
  local pad_000_e1_val  = pad_000_e1_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.pad_000_e1, pad_000_e1_tvbr, pad_000_e1_val)

  -- dissect the param4 field
  local param4_tvbr = tvbuf:range(16, 2)
  local param4_val  = param4_tvbr:le_uint()
  tree:add_le(event_handler_return_fields.param4, param4_tvbr, param4_val)

  return tvbuf:len()
end