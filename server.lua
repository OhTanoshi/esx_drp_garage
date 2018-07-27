RegisterServerEvent('eden_garage:debug')
RegisterServerEvent('eden_garage:modifystate')
RegisterServerEvent('eden_garage:pay')
RegisterServerEvent('eden_garage:payhealth')
RegisterServerEvent('eden_garage:logging')


ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterServerCallback('eden_garage:getVehicles', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local vehicules = {}

	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier",{['@identifier'] = xPlayer.getIdentifier()}, function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(vehicules, {vehicle = vehicle, state = v.state, plate = v.plate})
		end
		cb(vehicules)
	end)
end)

ESX.RegisterServerCallback('eden_garage:stockv',function(source,cb, vehicleProps)
	local isFound = false
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local vehicules = getPlayerVehicles(xPlayer.getIdentifier())
	local plate = vehicleProps.plate
	print(plate)
	
		for _,v in pairs(vehicules) do
			if(plate == plate)then
				local vehprop = json.encode(vehicleProps)
				MySQL.Sync.execute("UPDATE owned_vehicles SET vehicle=@vehprop WHERE plate=@plate",{['@vehprop'] = vehprop, ['@plate'] = plate})
				isFound = true
				break
			end		
		end
	cb(isFound)
end)

AddEventHandler('eden_garage:modifystate', function(plate, state)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local vehicules = getPlayerVehicles(xPlayer.getIdentifier())
	local state = state

	for _,v in pairs(vehicules) do
		MySQL.Sync.execute("UPDATE owned_vehicles SET state =@state WHERE plate=@plate",{['@state'] = state , ['@plate'] = plate})
		break		
	end
end)	

ESX.RegisterServerCallback('eden_garage:getOutVehicles',function(source, cb)	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local vehicules = {}

	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier AND state=false",{['@identifier'] = xPlayer.getIdentifier()}, function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(vehicules, vehicle)
		end
		cb(vehicules)
	end)
end)

ESX.RegisterServerCallback('eden_garage:checkMoney', function(source, cb)

	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.get('money') >= Config.Price then
		cb(true)
	else
		cb(false)
	end
end)

AddEventHandler('eden_garage:pay', function()

	local xPlayer = ESX.GetPlayerFromId(source)


	xPlayer.removeMoney(Config.Price)
	exports.pNotify:SendNotification({ text = "Garage Notification: You have paid Config.Price", queue = "right", timeout = 400, layout = "centerLeft" })

end)

function getPlayerVehicles(identifier)
	
	local vehicles = {}
	local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier",{['@identifier'] = identifier})	
	for _,v in pairs(data) do
		local vehicle = json.decode(v.vehicle)
		table.insert(vehicles, {id = v.id, plate = v.plate})
	end
	return vehicles
end

AddEventHandler('eden_garage:debug', function(var)
	print(to_string(var))
end)

function table_print (tt, indent, done)
  done = done or {}
  indent = indent or 0
  if type(tt) == "table" then
    local sb = {}
    for key, value in pairs (tt) do
      table.insert(sb, string.rep (" ", indent)) -- indent it
      if type (value) == "table" and not done [value] then
        done [value] = true
        table.insert(sb, "{\n");
        table.insert(sb, table_print (value, indent + 2, done))
        table.insert(sb, string.rep (" ", indent)) -- indent it
        table.insert(sb, "}\n");
      elseif "number" == type(key) then
        table.insert(sb, string.format("\"%s\"\n", tostring(value)))
      else
        table.insert(sb, string.format(
            "%s = \"%s\"\n", tostring (key), tostring(value)))
       end
    end
    return table.concat(sb)
  else
    return tt .. "\n"
  end
end

function to_string( tbl )
    if  "nil"       == type( tbl ) then
        return tostring(nil)
    elseif  "table" == type( tbl ) then
        return table_print(tbl)
    elseif  "string" == type( tbl ) then
        return tbl
    else
        return tostring(tbl)
    end
end
--Fin Debug


-- Fonction qui change les etats sorti en rentré lors d'un restart
AddEventHandler('onMySQLReady', function()

	MySQL.Sync.execute("UPDATE owned_vehicles SET state=true WHERE state=false", {})

end)
-- Fin Fonction qui change les etats sorti en rentré lors d'un restart


--debut de payement pour la santé vehicule
AddEventHandler('eden_garage:payhealth', function(price)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeMoney(price)

	TriggerClientEvent('esx:showNotification', source, 'You paid' .. price)

end)
--fin de payement pour la santé vehicule


--logger dans la console
AddEventHandler('eden_garage:logging', function(logging)
	RconPrint(logging)
end)
