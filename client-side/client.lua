-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
siVRP = {}
Tunnel.bindInterface("farms",siVRP)
vSERVER = Tunnel.getInterface("farms")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local fvX,fvY,fvZ = 1132.21,-1235.0,16.42,218.74
local m1vX,m1vY,m1vZ = 1125.96,-1233.16,16.42,175.24
local m2vX,m2vY,m2vZ = 1123.04,-1227.88,16.42,33.44
local m3vX,m3vY,m3vZ = 1127.75,-1229.74,16.42,311.84
local m4vX,m4vY,m4vZ = 1121.23,-1234.58,16.42,40.11
local m5cvX,m5cvY,m5cvZ = 1114.86,-1234.64,16.42,39.49
local m5lcvX,m5lcvY,m5lcvZ = 1118.24,-1237.74,16.42,310.22
-----------------------------------------------------------------------------------------------------------------------------------------
-- CODIGO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(fvX,fvY,fvZ))
			if distance <= 2.5 then
				timeDistance = 4
				DrawText3D(fvX,fvY,fvZ,"~g~E~w~   INICIAR FARM")
				if IsControlJustPressed(1,38) then
					FreezeEntityPosition(ped,true)
					vRP.playAnim(true,{"anim@heists@keycard@","exit"},false)
					itzfernando = 350
					Citizen.Wait(itzfernando)
					FreezeEntityPosition(ped,false)
					vRP._stopAnim()
					vSERVER.iniciarfarm()
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(m1vX,m1vY,m1vZ))
			if distance <= 1.5 then
				timeDistance = 4
				DrawText3D(m1vX,m1vY,m1vZ,"~g~E~w~   COLETAR FOLHA")
				if IsControlJustPressed(1,38) then
					if vSERVER.permissionroxos() then 
						vRP.playAnim(true,{"anim@gangops@facility@servers@bodysearch@","player_search"},true)
						FreezeEntityPosition(ped,true)
						TriggerEvent("player:blockCommands",true)
						TriggerEvent("cancelando",true)
						vSERVER.coletarmaterial1() 
						TriggerEvent("player:blockCommands",false)
						vRP._stopAnim()
						FreezeEntityPosition(ped,false)
						TriggerEvent("cancelando",false)
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(m2vX,m2vY,m2vZ))
			if distance <= 1.5 then
				timeDistance = 4
				DrawText3D(m2vX,m2vY,m2vZ,"~g~E~w~   COLETAR TALCO")
				if IsControlJustPressed(1,38) then
					if vSERVER.permissionroxos() then
						vRP.playAnim(true,{"anim@gangops@facility@servers@bodysearch@","player_search"},true)
						FreezeEntityPosition(ped,true)
						TriggerEvent("player:blockCommands",true)
						TriggerEvent("cancelando",true)
						vSERVER.coletarmaterial2() 
						TriggerEvent("player:blockCommands",false)
						vRP._stopAnim()
						FreezeEntityPosition(ped,false)
						TriggerEvent("cancelando",false)
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(m3vX,m3vY,m3vZ))
			if distance <= 1.5 then
				timeDistance = 4
				DrawText3D(m3vX,m3vY,m3vZ,"~g~E~w~   COLETAR ÁCIDO")
				if IsControlJustPressed(1,38) then
					if vSERVER.permissionroxos() then
						vRP.playAnim(true,{"anim@gangops@facility@servers@bodysearch@","player_search"},true)
						FreezeEntityPosition(ped,true)
						TriggerEvent("player:blockCommands",true)
						TriggerEvent("cancelando",true)
						vSERVER.coletarmaterial3() 
						TriggerEvent("player:blockCommands",false)
						vRP._stopAnim()
						FreezeEntityPosition(ped,false)
						TriggerEvent("cancelando",false)
					end 
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(m4vX,m4vY,m4vZ))
			if distance <= 1.5 then
				timeDistance = 4
				DrawText3D(m4vX,m4vY,m4vZ,"~g~E~w~   MISTURAR A COCAINA")
				if IsControlJustPressed(1,38) then
					if vSERVER.permissionroxos() then
						vRP.playAnim(true,{"anim@gangops@facility@servers@bodysearch@","player_search"},true)
						FreezeEntityPosition(ped,true)
						TriggerEvent("player:blockCommands",true)
						TriggerEvent("cancelando",true)
						vSERVER.coletarmaterial4() 
						TriggerEvent("player:blockCommands",false)
						vRP._stopAnim()
						FreezeEntityPosition(ped,false)
						TriggerEvent("cancelando",false)
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(m5cvX,m5cvY,m5cvZ))
			if distance <= 1.5 then
				timeDistance = 4
				DrawText3D(m5cvX,m5cvY,m5cvZ,"~g~E~w~   PEGAR PACOTE PARA EMBALAR")
				if IsControlJustPressed(1,38) then
					if vSERVER.permissionroxos() then
						vRP.playAnim(true,{"anim@gangops@facility@servers@bodysearch@","player_search"},true)
						FreezeEntityPosition(ped,true)
						TriggerEvent("player:blockCommands",true)
						TriggerEvent("cancelando",true)
						vSERVER.coletarpacote() 
						TriggerEvent("player:blockCommands",false)
						vRP._stopAnim()
						FreezeEntityPosition(ped,false)
						TriggerEvent("cancelando",false)
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
Citizen.CreateThread(function()
	while true do
		local timeDistance = 100
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			local distance = #(coords - vector3(m5lcvX,m5lcvY,m5lcvZ))
			if distance <= 1.5 then
				timeDistance = 4
				DrawText3D(m5lcvX,m5lcvY,m5lcvZ,"~g~E~w~   EMBALAR A COCAINA")
				if IsControlJustPressed(1,38) then
					if vSERVER.permissionroxos() then
						vRP.playAnim(true,{"anim@gangops@facility@servers@bodysearch@","player_search"},true)
						FreezeEntityPosition(ped,true)
						TriggerEvent("player:blockCommands",true)
						TriggerEvent("cancelando",true)
						vSERVER.misturarlean() 
						TriggerEvent("player:blockCommands",false)
						vRP._stopAnim()
						FreezeEntityPosition(ped,false)
						TriggerEvent("cancelando",false)
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)



-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)

	if onScreen then
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringKeyboardDisplay(text)
		SetTextColour(255,255,255,150)
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextCentre(1)
		EndTextCommandDisplayText(_x,_y)

		local width = string.len(text) / 160 * 0.45
		DrawRect(_x,_y + 0.0125,width,0.03,38,42,56,200)
	end
end