# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	total=0
	arr.each do |num|
		total += num	
	end
  total
end

def max_2_sum arr
  sum(arr.sort.last(2)) #ordem crescente soma dos 2 ultimos
end

def sum_to_n? arr, n #verifica se a soma de 2 numeros no array eh igual a n
  arr.product(arr).any? {|couple| sum(couple) == n} #any pode ter qualquer coisa, se nao tiver esta vazio 
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~  /^[bcdfghjklmnpqrstvwxyz]/i # ^ primeiro elemento  i = ignore
end

def binary_multiple_of_4? s
  if bin = /^[1|0]+/.match(s) #o + eh pq tem mais de um digito de 1 ou 0 #verifica se eh binario
    bin.to_s.to_i(2) % 4 == 0
  else
   false
  end
end

# Part 3

class BookInStock

#get e set
attr_accessor :isbn, :price

#construtor
def initialize(new_isbn, new_price)
  if new_isbn == ''
    raise ArgumentError.new("Must have an ISBN number") #lancar excecao
  end
  self.isbn = new_isbn
  if new_price <= 0
    raise ArgumentError.new("Must have a positive price")
  end
  self.price = new_price.to_f #transforma em float
end
#toString
def price_as_string
  return sprintf "$"+"%.2f", price #pra ter argumento/ ser string formatada, sprintf
end



end
