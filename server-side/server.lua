-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("farms",cRP)
vTASKBAR = Tunnel.getInterface("taskbar")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
-- CODIGO
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.iniciarfarm()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			TriggerClientEvent("Notify",source,"verde","Você iniciou o farm.",5000)
		else
			TriggerClientEvent("Notify",source,"vermelho","Você não tem permissão para iniciar.",5000)
		end
	end
end

function cRP.coletarmaterial1()
	local source = source
	local user_id = vRP.getUserId(source)
	local taskResult = vTASKBAR.taskFarms(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			if taskResult then
				vRP.giveInventoryItem(user_id,"folhadecoca",math.random(1,3),true)
				TriggerClientEvent("Notify",source,"verde","Você coletou Folha para inicar a produção.",5000)
				vRP.upgradeStress(user_id,1)
			else
				TriggerClientEvent("Notify",source,"vermelho","Você falhou em coletar a Folha.",5000)
			end
		end
	end
end

function cRP.coletarmaterial2()
	local source = source
	local user_id = vRP.getUserId(source)
	local taskResult = vTASKBAR.taskFarms(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			if taskResult then
				vRP.giveInventoryItem(user_id,"talco",math.random(1,3),true)
				TriggerClientEvent("Notify",source,"verde","Você coletou Talco para continuar a produção.",5000)
				vRP.upgradeStress(user_id,1)
			else
				TriggerClientEvent("Notify",source,"vermelho","Você falhou em coletar o Talco.",5000)
			end
		end
	end
end

function cRP.coletarmaterial3()
	local source = source
	local user_id = vRP.getUserId(source)
	local taskResult = vTASKBAR.taskFarms(source)
if user_id then
	if vRP.hasPermission(user_id,"Roxos") then
		if taskResult then
			vRP.giveInventoryItem(user_id,"acid",math.random(1,3),true)
			TriggerClientEvent("Notify",source,"verde","Você coletou Ácido para continuar a produção.",5000)
			vRP.upgradeStress(user_id,1)
		else
				TriggerClientEvent("Notify",source,"vermelho","Você falhou em coletar o Ácido.",5000)
			end
		end
	end
end

function cRP.coletarmaterial4()
	local source = source
	local user_id = vRP.getUserId(source)
	local taskResult = vTASKBAR.taskFarms(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			if taskResult then
				if vRP.tryGetInventoryItem(user_id,"acid",1,true) and vRP.tryGetInventoryItem(user_id,"folhadecoca",1,true) and vRP.tryGetInventoryItem(user_id,"talco",1,true) then
					vRP.giveInventoryItem(user_id,"cocaine",1,true)
					TriggerClientEvent("Notify",source,"verde","Você misturou os produtos e produziu Cocaina.",5000)
					vRP.upgradeStress(user_id,1)
				else
					TriggerClientEvent("Notify",source,"vermelho","Você falhou em misturar a Cocaina.",5000)
				end
			end
		end
	end
end

function cRP.coletarpacote()
	local source = source
	local user_id = vRP.getUserId(source)
	local taskResult = vTASKBAR.taskFarms(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			if taskResult then
				vRP.giveInventoryItem(user_id,"package",math.random(1,3),true)
				TriggerClientEvent("Notify",source,"verde","Você coletou o Pacote para embalar a Cocaina.",5000)
				vRP.upgradeStress(user_id,1)
			end
		end
	else
		TriggerClientEvent("Notify",source,"vermelho","Você falhou em coletar a Embalagem.",5000)
	end
end

function cRP.misturarlean()
	local source = source
	local user_id = vRP.getUserId(source)
	local taskResult = vTASKBAR.taskFarms(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			if taskResult then
				if vRP.tryGetInventoryItem(user_id,"cocaine",5,true) and vRP.tryGetInventoryItem(user_id,"package",5,true) then
					vRP.giveInventoryItem(user_id,"packedcocaine",3,true)
					TriggerClientEvent("Notify",source,"verde","Você colocou a Cocaina na embalagem e recebeu Cocaina Embalada.",5000)
					vRP.upgradeStress(user_id,1)
				end
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Você falhou em colocar a Cocaina na Embalagem.",5000)
		end
	end
end

function cRP.permissionroxos()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"Roxos") then
			return true
		else
			return false
		end
	end
end