-- Defining functions, such wow
function add(x, y)
    return x + y
end
function subtract(x, y)
    return x - y
end
function multiply(x, y)
    return x * y
end
function divide(x, y)
    return x / y
end
local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end
local t = {'1', '2', '3', '4'}


-- Taking user input and doing things with it :flushed:
io.write("Choose your operation. 1) Addition, 2) Subtraction, 3) Multiplication, 4) Division \nEnter your choice here:")  
local op = io.read()
if has_value(t, op) then
    io.write("Please enter your first number: ")
    local x = io.read()
    io.write("Enter your second number: ")
    local y = io.read()

    if op == "1" then
        print(x, "+", y, "=", add(x,y))
    elseif op == '2' then
        print(x, "-", y, "=", subtract(x,y))
    elseif op == "3" then
        print(x, "*", y, "=", multiply(x,y))
    elseif op == "4" then
        print(x, "/", y, "=", divide(x,y))
    end
else
    print("Invalid operation, try again.")
end