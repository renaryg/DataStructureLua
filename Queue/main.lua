require "Queue"

local function testQueue()
  local queueObject = Queue.new()
  queueObject:enqueue(23)
  queueObject:enqueue(33)
  queueObject:enqueue(43)
  print("pop:", queueObject:dequeue())
  print("pop:", queueObject:dequeue())
  print("pop:", queueObject:dequeue())
  print("pop:", queueObject:dequeue())
end

testQueue()
