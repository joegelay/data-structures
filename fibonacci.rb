def get_fib(position)
    if position <= 1
        return position
    end 
    get_fib(position - 1) + get_fib(position - 2)   
end     


puts get_fib(1)
puts get_fib(2)
puts get_fib(3)
puts get_fib(4)
puts get_fib(5)
puts get_fib(6)
puts get_fib(7)
puts get_fib(8)