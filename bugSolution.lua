local function foo(a)
  if a == nil then
    return nil  -- Correct handling of nil
  elseif type(a) ~= "number" then
    error("Invalid argument type: " .. type(a))
  else
    return a * 2
  end
end

local result = foo(nil)
print(result)  -- Output: nil

-- Improved error handling
pcall(function() foo("hello") end)

result = foo(10)
print(result)  -- Output: 20