#write your code here


def add (a, b) 
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum (numbers) 
    sum = 0
    numbers.each { |num|
    sum+=num
    }
    return sum
end

def multiply(*args) 
    total = 1
    args.each { |num|
        total *= num
    }
    return total
end

def power(a, b) 
    return a ** b
end

def factorial(n) 
    if n == 0 then
        return 1
    else return n * factorial(n-1)
    end
end
