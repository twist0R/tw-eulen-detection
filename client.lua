-- Should Crash Eulencheats
local function trigger_null_event()
    TriggerServerEventInternal(nil, "?", 1)
end
local _szp_xc = function()
    local s, r, e = xpcall(
        function()
            trigger_null_event()
            return true
        end,
        function()
            return false
        end)
    return r
end
CreateThread(function()
    TriggerServerEvent("tw:start_eulen_check")
    Wait(10)
    _szp_xc()
    Wait(50)
    TriggerServerEvent("tw:not_eulen")
end)