-- 协程
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午6:55


local producer

function product()
    local i = 0
    while true do
        i = i + 1

        if (i == 100) then
            break
        end

        send(i)
    end
end

function consum()
    while true do
        local st, i = receive()

        if (not st) then
            break
        end

        print("GOT ", i)
    end
end

function send(x)
    coroutine.yield(x)
end

function receive()
    local status, value = coroutine.resume(producer)
    return status, value
end

function CoroutineDemo()
    producer = coroutine.create(product)
    consum()
end

CoroutineDemo()
