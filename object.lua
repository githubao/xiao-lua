-- 面向对象
-- 
-- User: baoqiang
-- Date: 2019/4/19
-- Time: 下午9:40

Person = {}

function Person:new(p)
    local obj = p
    if (obj == nil) then
        obj = { name = 'default', age = 18, handsome = true }
    end
    self.__index = self
    return setmetatable(obj, self)
end

function Person:toString()
    return self.name .. " : " .. self.age .. " : " .. (self.handsome and 'handsome' or 'ugly')
end

--继承
Student = Person:new()

function Student:new()
    local newObj = { year = 2013 }
    self.__index = self
    return setmetatable(newObj, self)
end

function Student:toString()
    return "Student : " .. self.year .. " : " .. self.name
end


function obj_wow()
    local me = Person:new()
    print(me:toString())

    local someone = Person:new { name = "someone", age = 88, handsome = false }
    print(someone:toString())

    local s = Student:new()
    print(s:toString())
end

obj_wow()
