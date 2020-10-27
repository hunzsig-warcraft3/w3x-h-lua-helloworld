-- hot模式只适合本地调试，可以使用package打包为dist上线（参考example）
-- 下面是注册你的本机路径，识别lua目录的加载
package.path = package.path .. ";Z:\\Workspace\\war3\\hunzsig-warcraft3\\h-lua\\?.lua"
package.path = package.path .. ";Z:\\Workspace\\war3\\hunzsig-warcraft3\\w3x-h-lua-helloworld\\?.lua"

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

require "start"