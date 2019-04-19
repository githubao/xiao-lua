-- lua function
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午4:45
--

function create_a_counter()
    local count = 90
    return function()
        count = count + 1
        return count
    end
end


function cycle()
    local ct = create_a_counter()

    for i = 1, 120 do
        print("ct got: ", ct())
    end
end

cycle()
