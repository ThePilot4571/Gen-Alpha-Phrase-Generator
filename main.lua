capitalized = true
local list = {"gyatt", "sigma", "ohio", "kai cenat", "rizz", "fanum tax", "skibidi"}

local function capitalizeFirst(str)
    return(string.upper(string.sub(str, 1, 1))..string.sub(str, 2, -1)) 
end

if capitalized then
    out = {capitalizeFirst(list[math.random(1, #list)])}
else
    out = {list[math.random(1, #list)]}
end

while #out < 15 do
    local word = list[math.random(1, #list)]
    if out[#out] ~= word then
        table.insert(out, word)
    end
end

print(table.concat(out, " ") .. "\n")
