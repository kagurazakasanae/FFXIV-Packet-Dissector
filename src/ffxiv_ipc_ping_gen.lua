-- This file is generated by tools/json2lua.js

local ffxiv_ipc_ping = Proto("ffxiv_ipc_ping", "FFXIV-IPC Ping")

local ping_fields = {
  time_in_milliseconds = ProtoField.uint64("ffxiv_ipc_ping.time_in_milliseconds", "timeInMilliseconds", base.DEC),
}

ffxiv_ipc_ping.fields = ping_fields

function ffxiv_ipc_ping.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_ping, tvbuf)
  pktinfo.cols.info:set("Ping")

  local len = tvbuf:len()

  -- dissect the time_in_milliseconds field
  local time_in_milliseconds_tvbr = tvbuf:range(0, 8)
  local time_in_milliseconds_val  = time_in_milliseconds_tvbr:le_uint64()
  tree:add_le(ping_fields.time_in_milliseconds, time_in_milliseconds_tvbr, time_in_milliseconds_val)

  return len
end