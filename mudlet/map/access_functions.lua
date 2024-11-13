local function assertStartingRoom(expectedRoom)
    assert(env["房间"] == expectedRoom, "Invalid starting room. Abort.")
end

function df2sl()
    assertStartingRoom("登封县北街")
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
    assertStartingRoom("少室山山脚")
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
    assertStartingRoom("东安门")
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
    assertStartingRoom("黄土大道")
    local function _toEast(room_name, exits)
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

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("w")
end

function toXiaoShanPo()
    assertStartingRoom("天水关")

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
    assertStartingRoom("小山坡")

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
