local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy['getInterface']("vRP")
kyo = {}
Tunnel['bindInterface'](GetCurrentResourceName(),kyo)

kyo['police'] = function(passportVictim)
    for kyo,taka in pairs(kyocfg['permission']) do
        if vRP['hasPermission'](passportVictim, taka) then
            return true
        else
            return false
        end
    end
end

kyo['reward'] = function(passportKiller)
    for kyo,taka in pairs(kyocfg['reward']) do
        vRP['giveInventoryItem'](passportKiller, taka[1], taka[2])
    end
    if kyocfg['notfiy']['active'] then
        TriggerClientEvent('Notify', passportKiller, kyocfg['notfiy']['type'], kyocfg['notfiy']['message'], kyocfg['notfiy']['time'])
    end
end
