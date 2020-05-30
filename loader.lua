-- 加载h-lua
require "h-lua"

-- 镜头模式
hcamera.setModel("normal")

-- 设定玩家
hplayer.qty_max = 1 -- 最大玩家数
hplayer.convert_ratio = 1000000 -- 换算比率，100金 -> 1木

-- 设定敌军
henemy.setName("怪物")
-- henemy.setShareSight(true)
henemy.setColor(cj.ConvertPlayerColor(12)) -- black
henemy.setPlayer(hplayer.players[2])

-- 调试去除迷雾
if (HLUA_DEBUG == true) then
    henv.setFogStatus(false, false)
else
    henv.setFogStatus(true, true)
end

-- game start(这里需要用时间事件延时N秒，不然很多动作会在初始化失效)
require "start"
