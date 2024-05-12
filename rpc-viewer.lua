local imgui = reuquire("imgui")
local key = require("vkeys")

main = function()
    while true do wait(0)
        if wasKeyPressed(key.VK_X) then
            main_window_state.v= not main_window_state.v
            printStringNow("Button pressed!", 1000)
        end
    end

    imgui["Process"] = true
end

local main_window_state = imgui.ImBool(false)
local imgui["onDrawFrame"]() = function()
    imgui["Begin"] "RPC's"
    imgui["Text"] rpcId
    imgui["Text"] rpcName
    imgui["Text"] '---------------'
    imgui["End"]()
end
