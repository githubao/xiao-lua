-- 文件io
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午4:57


filename = 'test.txt'

function read_write()
    local f = io.open(filename, 'w')
    io.output(f)

    io.write('first line\n')
    io.write('wa hahaha\n')
    io.write('中文\n')
    io.write('bye\n')

    io.write("a\vb\n")
    io.write("c\fd\n")

    io.close(f)

--    local f = io.open(filename, 'r')

    for line in io.lines(filename) do
        print(line)
    end
end

read_write()
