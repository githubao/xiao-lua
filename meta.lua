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

function meta_run()
    local fraction_a = { numerator = 2, denominator = 3 }
    local fraction_b = { numerator = 4, denominator = 7 }

    local fraction_op = {}
    function fraction_op.__add(f1, f2)
        local ret = {}
        ret.numerator = f1.numerator * f2.denominator + f2.numerator * f1.denominator
        ret.denominator = f1.denominator * f2.denominator
        return ret
    end

    setmetatable(fraction_a, fraction_op)
    setmetatable(fraction_b, fraction_op)

    local fraction_s = fraction_a + fraction_b

    print(fraction_s.numerator,fraction_s.denominator)
end

--meta_demo()
meta_run()

--  __add(a, b)         a + b
--  __sub(a, b)         a - b
--  __mul(a, b)         a * b
--  __div(a, b)         a / b
--  __mod(a, b)         a % b
--  __pow(a, b)         a ^ b
--  __unm(a)            -a
--  __concat(a, b)      a .. b
--  __len(a)            #a
--  __eq(a, b)          a == b
--  __lt(a, b)          a < b
--  __le(a, b)          a <= b
--  __index(a, b)       a.b
--  __newindex(a, b, c) a.b = c
--  __call(a, ...)      a(...)
