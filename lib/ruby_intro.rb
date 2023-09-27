# Parte 1

def sum(arr)
  # COMPLETA TU CODIGO
  resultado = 0
  arr.each { |a| resultado += a }
  resultado
end

def max_2_sum arr
  # COMPLETA TU CODGO
  max_val1 = arr.empty? ? 0 : arr.max
  arr.empty? ? arr : arr.delete_at(arr.index(max_val1))
  max_val2 = arr.empty? ? 0 : arr.max 
  max_val1 + max_val2
end

def sum_to_n? arr, n
  # COMPLETA TU CODIGO
  arr.select { |a| a < n }.each do |elemento| 
    if arr.index(n-elemento) != nil and arr.index(n-elemento)!= arr.index(elemento)
      return true
    end
  end
  false
end


# Parte 2

def hello(name)
  # COMPLETA TU CODIGO
  if name =~ /^[A-Za-z]+$/
    return "Hello "+name
  end
end

def starts_with_consonant?(s)
  # COMPLETA TU CODIGO 
  if s =~ /^[[:alpha:]&&[^AEIOUaeiou]]/
    return true
  end
  false
end

def binary_multiple_of_4? s
  # COMPLETA TU CODIGO
  if s =~ /^[01]+$/
    c = s.match(/^[01]+$/).to_s
    numeroBinario = c.to_i(2)
    return numeroBinario % 4 == 0
  end
  false
end

# Parte 3

class BookInStock
  # COMPLETA TU CODIGO
  def initialize(numISBN,precio)
    if numISBN.empty? 
      raise ArgumentError, "ISBN no puede estar vacio"
    end
    if !(numISBN=~/^[0-9][-0-9]*$/) 
      raise ArgumentError, "ISBN debe empezar con un número e incluir guiones"
    end
    if precio<=0
      raise ArgumentError, "El precio debe ser mayor que cero"
    end
    @numISBN = numISBN
    @precio = precio
  end
  # getter
  def precio 
    @precio
  end
  
  def numISBN
    @numISBN
  end

  # setter
  def precio=(nuevo_precio)
    if nuevo_precio<=0
      raise ArgumentError, "El precio debe ser mayor que cero"
    end
    @precio = nuevo_precio
  end

  def numISBN=(nuevo_numISBN)
    if nuevo_numISBN.empty? 
      raise ArgumentError, "ISBN no puede estar vacio"
    end
    if !(nuevo_numISBN=~/^[0-9][-0-9]*$/) 
      raise ArgumentError, "ISBN debe empezar con un número e incluir guiones"
    end
    @numISBN = nuevo_numISBN
  end

  def price_as_string
    format("$%.2f",@precio)
  end
end

