# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is the value of the fibonacci_number
# Space complexity: O(1)
def fibonacci(fibonacci_number)
  raise ArgumentError if fibonacci_number == nil || fibonacci_number < 0
  return 0 if fibonacci_number == 0

  i = 0
  first_number = 0
  second_number = 1

  while i < (fibonacci_number - 1)
    temp = second_number
    second_number = first_number + second_number
    first_number = temp
    i += 1
  end
  return second_number
end
