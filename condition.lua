-- 条件语句
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午4:53


function condition(a)
--    local a = 25
    if (a <= 18) then
        print("teenager")
    elseif (a > 60) then
        print("old")
    else
        print("worker")
    end
end

condition(77)
condition(54)
condition(17)