require "Queue"

local function testQueue()
  local queueObject = Queue.new()
  queueObject:push(23)
  queueObject:push(33)
  queueObject:push(43)
  print("pop:", queueObject:pop())
  print("pop:", queueObject:pop())
  print("pop:", queueObject:pop())
  print("pop:", queueObject:pop())
end

testQueue()
