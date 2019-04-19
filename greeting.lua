-- 打招呼
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午9:38


local Greeter = { name = "default" }

function Greeter.Greeting()
    print("Hello, this is " .. Greeter.name)
end

return Greeter
