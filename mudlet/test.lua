

MyClass = {}

MyClass.__index = MyClass


function MyClass:New()
    local instance = setmetatable({}, MyClass)
    instance.value = 10
    return instance
end


function MyClass:GetValue()
    return self.value
end


local obj = MyClass:New()
print(obj:GetValue())