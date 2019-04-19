-- 调用使用c语言编译的so包
-- https://my.oschina.net/u/1053317/blog/542871
-- gcc -g -O2 -Wall -fPIC -undefined dynamic_lookup --shared usertime.c -o usertime.so
-- -I/usr/local/Cellar/lua/5.3.5_1/include/lua -L/usr/local/Cellar/lua/5.3.5_1/lib
--
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午5:43


local utime = require 'usertime'
local socket = require 'socket'

function current_time()
    return utime.getmicrosecond()
end

function time_demo()
    print(string.format("%d", current_time()))
    print(string.format("%f", socket.gettime()))
end

--time_demo()
