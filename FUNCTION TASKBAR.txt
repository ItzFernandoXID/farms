Function TASKBAR farms.

Adicionar no client.lua do arquivo de taskbar da base

-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKFARMS
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.taskFarms()
    local finished = taskBar(15000,7)
    if finished then
        return true
    end

    return false
end