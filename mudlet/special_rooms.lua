SpecialRooms = {
    ["小山坡"] = {
        ["ConnectedRoom"] = "天水关",
        ["in"] = function()
            assert(env["房间"] == "天水关", "初始房间必须为天水关。")
            local id = tempTrigger("        这里明显的出口是 east 和 west。", function()
                send("w")
            end)
            tempTrigger("        这里明显的出口是 east 和 westup。", function()
                killTrigger(id)
                send("wu")
                raiseEvent("sysSpeedwalkFinished")
            end, 1)

            raiseEvent("sysSpeedwalkStarted")
            send("w")
        end,
        ["out"] = function()
            assert(env["房间"] == "小山坡", "初始房间必须为小山坡。")
            local id1 = tempTrigger("        这里明显的出口是 east 和 westup。", function()
                send("e")
            end)
            local id2 = tempTrigger("        这里明显的出口是 east 和 west。", function()
                send("e")
            end)
            tempTrigger("天水关 - ", function()
                killTrigger(id1)
                killTrigger(id2)
                raiseEvent("sysSpeedwalkFinished")
            end, 1)

            raiseEvent("sysSpeedwalkStarted")
            send("ed")
        end,
    },
}
