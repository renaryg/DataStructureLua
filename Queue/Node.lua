Node = {next=nil, value=nil}

function Node.new(o)
  o = o or {}
  setmetatable(o, {__index = Node})
  return o
end
