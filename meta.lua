-- 使用元表
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午5:06


function meta_demo()
    local mytable = setmetatable({ lang = "lua" }, {
        __index = function(mytable, key)
            if key == "def" then
                return 'default'
            else
                return nil
            end
        end
    })

    print(mytable['lang'])
    print(mytable['noone'])
    print(mytable['def'])

end

meta_demo()