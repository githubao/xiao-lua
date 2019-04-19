-- 一个模块
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午9:36

local g = require('greeting')

function mod_go()
    g.name = 'xiao'
    g.Greeting()
end

