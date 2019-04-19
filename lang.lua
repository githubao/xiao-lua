-- 语言语法
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午7:22


function lang_demo()
    --    str_equal()
    --    read_data()
    --    for_go()
    --    closure()
    table_demo()
end

function str_equal()
    local s1 = 'alo\n123"'
    local s2 = "alo\n123\""
    local s3 = '\97lo\10\04923"'
    local s4 = [[alo
123"]]

    print(s1 == s2)
    print(s1 == s3)
    print(s1 == s4)

    print(s1 ~= s2)
end

function read_data()
    local age = io.read()
    print("Your age is " .. age)
    print("type age " .. type(age))
end

function for_go()
    local sum = 0
    for i = 1, 100 do
        sum = sum + i
    end
    print(sum)

    sum = 0
    for i = 1, 100, 2 do
        sum = sum + i
    end
    print(sum)

    sum = 0
    for i = 100, 1, -2 do
        sum = sum + i
    end
    print(sum)

    sum = 2
    repeat
        sum = sum ^ 2
        print(sum)
    until sum > 1000
end

function closure()
    local c = newCounter()
    print(c())
    print(c())

    local power2 = myPower(2)
    print(power2(4))
end

function newCounter()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end

function myPower(x)
    return function(y)
        return y ^ x
    end
end

function table_demo()
    local dic = { name = "xiao", age = 18 }
    dic["name"] = nil
    dic.age = 16
    dic["no_exist"] = "new"
    dic.no_exist2 = "new2"
    for k, v in pairs(dic) do
        print(k, v)
    end

    local list = { 10, 20, 30 }
    for i = 1, #list do
        print(list[i])
    end

--    _G：全局变量的table
    for k, v in pairs(_G) do
--        print(k, v)
    end
end

lang_demo()


