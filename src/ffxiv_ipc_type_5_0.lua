-- This file is generated by tools/json2lua.js

local M = {}
M.types = {
  [0x0186] = {
    [0] = {
      name = "ffxiv_ipc_actor_cast",
      length = 32,
    },
    [1] = {
      name = "ffxiv_ipc_npc_spawn",
      length = 632,
    },
  },
  [0x0142] = {
    [0] = {
      name = "ffxiv_ipc_actor_control",
      length = 24,
    },
  },
  [0x0143] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_self",
      length = 32,
    },
  },
  [0x24d] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_target",
      length = 32,
    },
  },
  [0x016D] = {
    [0] = {
      name = "ffxiv_ipc_actor_gauge",
      length = 16,
    },
  },
  [0x0182] = {
    [0] = {
      name = "ffxiv_ipc_actor_move",
      length = 16,
    },
  },
  [0x0068] = {
    [0] = {
      name = "ffxiv_ipc_actor_set_pos",
      length = 24,
    },
  },
  [0x0141] = {
    [0] = {
      name = "ffxiv_ipc_add_status_effect",
      length = 26,
    },
  },
  [0x0312] = {
    [0] = {
      name = "ffxiv_ipc_boss_status_effect_list",
      length = 744,
    },
  },
  [0x0180] = {
    [0] = {
      name = "ffxiv_ipc_character",
      length = 592,
    },
    [1] = {
      name = "ffxiv_ipc_update_position_instance",
      length = 40,
    },
  },
  [0x015b] = {
    [0] = {
      name = "ffxiv_ipc_client_action",
      length = 24,
    },
  },
  [0x013A] = {
    [0] = {
      name = "ffxiv_ipc_client_trigger",
      length = 32,
    },
    [1] = {
      name = "ffxiv_ipc_mail_letter_notification",
      length = 12,
    },
  },
  [0x0150] = {
    [0] = {
      name = "ffxiv_ipc_company_board",
      length = 1,
    },
  },
  [0x014f] = {
    [0] = {
      name = "ffxiv_ipc_company_info",
      length = 80,
    },
  },
  [0x0151] = {
    [0] = {
      name = "ffxiv_ipc_company_level",
      length = 32,
    },
  },
  [0x01A2] = {
    [0] = {
      name = "ffxiv_ipc_container_info",
      length = 16,
    },
  },
  [0x007A] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_duty_info",
      length = 8,
    },
  },
  [0x0079] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_member_status",
      length = 16,
    },
  },
  [0x0078] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_notify",
      length = 12,
    },
  },
  [0x01A5] = {
    [0] = {
      name = "ffxiv_ipc_currency_crystal_info",
      length = 32,
    },
  },
  [0x015E] = {
    [0] = {
      name = "ffxiv_ipc_effect",
      length = 124,
    },
  },
  [0x015A] = {
    [0] = {
      name = "ffxiv_ipc_event_handler_return",
      length = 18,
    },
  },
  [0x0197] = {
    [0] = {
      name = "ffxiv_ipc_examine",
      length = 656,
    },
  },
  [0x01b5] = {
    [0] = {
      name = "ffxiv_ipc_fish_event",
      length = 36,
    },
  },
  [0x0065] = {
    [0] = {
      name = "ffxiv_ipc_group_message",
      length = 57,
    },
    [1] = {
      name = "ffxiv_ipc_ping",
      length = 8,
    },
  },
  [0x0066] = {
    [0] = {
      name = "ffxiv_ipc_init",
      length = 16,
    },
  },
  [0x007C] = {
    [0] = {
      name = "ffxiv_ipc_init_zone",
      length = 96,
    },
  },
  [0x01A7] = {
    [0] = {
      name = "ffxiv_ipc_inventory_action_ack",
      length = 16,
    },
  },
  [0x01A4] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction",
      length = 36,
    },
  },
  [0x01A3] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction_finish",
      length = 16,
    },
  },
  [0x012A] = {
    [0] = {
      name = "ffxiv_ipc_linkshell_list",
      length = 0,
    },
  },
  [0x010c] = {
    [0] = {
      name = "ffxiv_ipc_boss_npc_spawn",
      length = 640,
    },
  },
  [0x017F] = {
    [0] = {
      name = "ffxiv_ipc_player_spawn",
      length = 624,
    },
  },
  [0x0193] = {
    [0] = {
      name = "ffxiv_ipc_player_state_flags",
      length = 16,
    },
  },
  [0x0190] = {
    [0] = {
      name = "ffxiv_ipc_player_stats",
      length = 224,
    },
  },
  [0x0104] = {
    [0] = {
      name = "ffxiv_ipc_public_message",
      length = 48,
    },
  },
  [0x0116] = {
    [0] = {
      name = "ffxiv_ipc_server_notice",
      length = 1,
    },
  },
  [0x0115] = {
    [0] = {
      name = "ffxiv_ipc_server_notice_short",
      length = 1,
    },
  },
  [0x0117] = {
    [0] = {
      name = "ffxiv_ipc_set_online_status",
      length = 8,
    },
  },
  [0x013d] = {
    [0] = {
      name = "ffxiv_ipc_skill_handler",
      length = 32,
    },
  },
  [0x015B] = {
    [0] = {
      name = "ffxiv_ipc_status_effect_list",
      length = 384,
    },
  },
  [0x018D] = {
    [0] = {
      name = "ffxiv_ipc_update_class_info",
      length = 16,
    },
  },
  [0x0145] = {
    [0] = {
      name = "ffxiv_ipc_update_hp_mp_tp",
      length = 8,
    },
  },
  [0x01A8] = {
    [0] = {
      name = "ffxiv_ipc_update_inventory_slot",
      length = 64,
    },
  },
  [0x01A1] = {
    [0] = {
      name = "ffxiv_ipc_item_info",
      length = 64,
    },
  },
}

function M.getDissector(typeNum, length)
  local types = M.types[typeNum]
  if type(types) ~= "table" then
    return nil
  end

  for k, v in pairs(types) do
    if v.length == length then
      return Dissector.get(v.name)
    end
  end

  for k, v in pairs(types) do
    if v.length < length then
      return Dissector.get(v.name)
    end
  end

  return nil
end

return M
