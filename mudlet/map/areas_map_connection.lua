MapConnections = {

    ["中原"] = {
        ["东方"] = {
            room = "东安门",
            func = toEast
        },
        ["西方"] = {
            room = "天水关",
            func = toXiaoShanPo,
        },
        ["少林"] = {
            room = "登封县北街",
            func = df2sl,
        },
        ["姑苏慕容"] = {
            room = "",
            func = NotImplemented,
        },
    },
    ["东方"] = {
        ["中原"] = {
            room = "黄土大道-开封-泰山-蓬莱-se-w",
            func = toDongAnMen,
        },
    },
    ["西方"] = {
        ["中原"] = {
            room = "小山坡",
            func = toTianShuiGuan,
        },
        ["灵鹫宫"] = {
            room = "虎跳溪",
            func = shangTianShan,
        },
    },
    ["少林"] = {
        ["中原"] = {
            room = "少室山山脚",
            func = sl2df,
        },
    },
    ["灵鹫宫"] = {
        ["中原"] = {
            room = "小院",
            func = xiaTianShan,
        },
    },
    ["姑苏慕容"] = {
        ["中原"] = {
            room = "渔人码头",
            func = NotImplemented,
        },
    },
}
