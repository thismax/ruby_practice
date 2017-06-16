# The Fibonacci Sequence follows a simple rule: the next number in the sequence is the sum of the previous two. The sequence begins with [0, 1]. One computes the third number by summing the first and  second (0 + 1 == 1), yielding [0, 1, 1], one computes the fourth number by summing the second and the third, yielding [0, 1, 1, 2], and so on.
# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(6) => [0, 1, 1, 2, 3, 5]
def fibs(n)
  arr = [0,1]
  if n <= 2
    arr.take(n)
  end
  until arr.length == n
    arr.push(arr[-1] + arr[-2])
  end
  arr
end