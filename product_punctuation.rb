# Define a method that multiplies the frequencies of the periods, commas, hyphens, semicolons, question marks, and exclamation points in a given string and returns the product. If any punctuation does not occur, don't include it in the product, i.e., don't multiply by zero!
def product_punctuation(str)
  arr = [0,0,0,0,0,0,0]
  product = 1
  
  str.chars.each do |el|
    arr[0] += 1 if el =="."
    arr[1] += 1 if el ==","
    arr[2] += 1 if el =="-"
    arr[3] += 1 if el ==";"
    arr[4] += 1 if el =="?"
    arr[5] += 1 if el =="!"
  end
  
  arr.delete_if {|x| x < 1}
  arr.each {|el| product *= el}
  product
  
end