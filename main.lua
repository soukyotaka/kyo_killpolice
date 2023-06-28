local Tunnel = module("vrp","lib/Tunnel")
kyo = Tunnel['getInterface'](GetCurrentResourceName())

AddEventHandler('gameEventTriggered', function(event, menssage)
  if (not (event == 'CEventNetworkEntityDamage')) then
    return
  end

  if (IsEntityAPed(menssage[2]) and IsPedAPlayer(menssage[2])) then
    if (GetEntityHealth(menssage[1]) <= kyocfg['health']) then
      local victim = NetworkGetPlayerIndexFromPed(menssage[1])
      local killer = NetworkGetPlayerIndexFromPed(menssage[2])

      local passportVictim = GetPlayerServerId(victim)
      local passportKiller = GetPlayerServerId(killer)

      if (passportKiller ~= passportKiller) then
        if kyo['police'](passportVictim) then
          kyo['reward'](passportKiller)
        end
      end
    end
  end
end)
