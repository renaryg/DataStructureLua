require "Node"

Queue = {head = nil}
function Queue.new(o)
  o = o or {}
  setmetatable(o, {__index=Queue})
  return o
end

function Queue:push(elem)
  if self:isEmpty() then
    self.head = Node.new({next=nil, value=elem})
  else
    local tmpNode = self.head
    while tmpNode.next ~= nil do
      tmpNode = tmpNode.next
    end
    tmpNode.next = Node.new({next=nil, value=elem})
  end
end

function Queue:pop()
  local saveValue = nil
  if not self:isEmpty() then
    saveValue = self.head.value
    self.head = self.head.next
  end
  return saveValue
end

function Queue:isEmpty()
  return self.head == nil
end
