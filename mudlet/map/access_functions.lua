function AssertStartingRoom(expectedRoom)
    local roomId = GetCurrentRoomId()
    debugc("Current Room Id: " .. roomId)
    assert(roomId == expectedRoom, "Invalid starting room. Abort.")
end

function df2sl()
    AssertStartingRoom("登封县北街")
    local function _eventHandler(room_name, exits)
        if room_name == "少室山山脚" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "官道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            local d = ""
            for _, dir in ipairs(exits) do
                if string.sub(dir, 1, 5) == "north" then
                    d = dir
                    break
                end
            end
            env["onEnterRoomEventHandler"] = _eventHandler
            send(d)
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("nw")
end

function sl2df()
    AssertStartingRoom("少室山山脚")
    local function _eventHandler(room_name, exits)
        if room_name == "登封县北街" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "官道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            local d = ""
            for _, dir in ipairs(exits) do
                if string.sub(dir, 1, 5) == "south" then
                    d = dir
                    break
                end
            end
            env["onEnterRoomEventHandler"] = _eventHandler
            send(d)
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("s")
end

function toEast()
    AssertStartingRoom("东安门")
    local function _eventHandler(room_name, exits)
        local rid = GetRoomId(room_name, exits)
        if rid == "黄土大道-开封-泰山-蓬莱-se-w" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "黄土大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler
            send("e")
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("e")
end

function toDongAnMen()
    AssertStartingRoom("黄土大道-开封-泰山-蓬莱-se-w")
    local function _eventHandler(room_name, exits)
        if room_name == "东安门" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "黄土大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler
            send("w")
        end
    end

    raiseEvent("TravelStarted")
    env["onEnterRoomEventHandler"] = _eventHandler
    send("w")
end

function toXiaoShanPo()
    AssertStartingRoom("天水关")
    local function _eventHandler(room_name, exits)
        if room_name == "小山坡" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler

            for _, dir in ipairs(exits) do
                if dir == "west" or dir == "westup" then
                    send(dir)
                    break
                end
            end
        end
    end
    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("w")
end

function toTianShuiGuan()
    AssertStartingRoom("小山坡")

    local function _eventHandler(room_name, exits)
        if room_name == "天水关" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler

            for _, dir in ipairs(exits) do
                if dir == "east" then
                    send(dir)
                    break
                end
            end
        end
    end
    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("ed")
end

function shangTianShan()
    AssertStartingRoom("虎跳溪")

    local tid = tempTimer(1, function() send("jump over 小溪") end, true)

    tempTrigger("断魂崖 - ", function()
        killTimer(tid)
        CheckFreeze(function()
            env["onEnterRoomEventHandler"] = function(room_name, exits)
                if room_name == "屏风壁" then
                    send("l 石壁")
                    CheckFreeze(function()
                        send("climb up")
                        CheckFreeze(function()
                            send("n")
                            CheckFreeze(function()
                                send("l 云雾;;l 云雾;;l 黑影;;run to 主峰")
                                CheckFreeze(function()
                                    send("nu;;e;;nu;;e;;nu;;n;;n;;n;;n")
                                end)
                            end)
                        end)
                    end)
                end
            end
            send("climb down")
        end)
    end, 1)
end

function xiaTianShan()
    AssertStartingRoom("小院-s-n-e-w")
    send("s;;w;;s;;s;;s;;s;;s;;s;;sd;;sd;;wu;;sd;;e;;se;;e;;e;;eu")
end

function ToMuRong()
    AssertStartingRoom("太湖边")
    local trigger_id = tempTrigger("渔人码头 - ", function()
        raiseEvent("TravelFinished")
    end, 1)
    tempTimer(24, function()
        killTrigger(trigger_id)
    end)
    raiseEvent("TravelStarted")
    send("sail")
end
