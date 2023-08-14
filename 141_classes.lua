Animal = {}
MetaAnimal = {}
MetaAnimal.__index = Animal --makes Animal a class

function Animal.new(name)  -- constructor
  -- body
  local instance = setmetatable({}, MetaAnimal)
  local instance.name = name
  return instance

end


function Animal:displayName()  -- colon, means can use self
  print(self.name)
end

animal1 = Animal.new("dog") 
animal2 = Animal.new("cat") 

-- animal1 = Animal.new("dog") 
-- animal1 = Animal.new("dog") 
-- animal1 = Animal.new("dog") 
