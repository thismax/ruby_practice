def fibonacci(n)
  arr = [0,1]
  if n <= 2
    arr.take(n)
  end
  until arr.length == n
    arr.push(arr[-1] + arr[-2])
  end
  arr
end