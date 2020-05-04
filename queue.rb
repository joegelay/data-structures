# An array can behave like a queue in Ruby using .unshift and .pop

queue = []
queue.unshift "apple"
queue.unshift "orange"
queue.unshift "banana"

# ["banana", "orange", "apple"]

# Ruby has a proper thread-safe, blocking, Queue class.

que = Queue.new
que << 1
que << 2
que << 3

que.pop
# 1
que.pop
# 2 

