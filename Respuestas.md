# Respuestas

## Parte 1

Para esta parte se tiene que definir tres método : sum, max_2_sum y sum_to_n , para los cuales crear sus pruebas usando Rspec

El método sum , es la siguiente 

```
def sum(arr)
  # COMPLETA TU CODIGO
  resultado = 0
  arr.each { |a| resultado += a }
  resultado
end
```

Y sus pruebas en Rspec son las siguientes:

```
describe "#sum" do
  context "a function to add its elements" do
    context "give an empty array" do
      arr = []
      it "return 0" do
        expect(sum(arr)).to eql(0)
      end
    end
    context "give a non-empty array : [1,2,3,4,-1,6]" do
      arr = [1,2,3,4,-1,-6]
      it "return 3"do 
        expect(sum(arr)).to eql(3)
      end
    end
  end
end
```

Lo cual al ejecutar el comando `rspec -e '#sum ' spec/parte1_spec.rb`, no hubo fallas de los dos ejemplos dados en las pruebas. Es decir, el método sum al ingresarle un array vacío debe retornar cero, y sumar correctamente arrays no vacíos, lo cual hace.

El método max_2_sum, es la siguiente

```
def max_2_sum arr
  # COMPLETA TU CODGO
  max_val1 = arr.empty? ? 0 : arr.max
  arr.empty? ? arr : arr.delete_at(arr.index(max_val1))
  max_val2 = arr.empty? ? 0 : arr.max 
  max_val1 + max_val2
end
```

Y sus pruebas son las siguientes :

```
describe "#max_2_sum" do
  context "a function to add its two maximum values" do
    context "give an empty array" do 
      arr = []
      it "return 0" do 
        expect(max_2_sum(arr)).to eql(0)
      end
    end
    context "give an array with one element: [12]" do 
      arr = [12]
      it "return 12" do
        expect(max_2_sum(arr)).to eql(12)
      end
    end
    context "give an array with only two elements: [3,4]" do
      arr = [3,4]
      it "return 7" do
        expect(max_2_sum(arr)).to eql(7)
      end
    end
    context "give an array with two maximum equal elements: [34,40,40]" do 
      arr = [34,40,40]
      it "return 80" do
        expect(max_2_sum(arr)).to eql(80)
      end
    end
    context "give an array like : [4,5,9,10,12,14,14,16]" do
      arr = [4,5,9,10,12,14,14,16]
      it "return 30" do
        expect(max_2_sum(arr)).to eql(30)
      end
    end
  end
end
```

El método retorna la suma de los máximos valores de un array, en las pruebas al ingresarle un array vacio debe retornar cero, lo cual hace. Segundo, al ingresarle un array con un solo valor, debe retornar ese valor, lo cual también realiza de manera correcta. Tercero, es su funcionamiento esencial, lo cual hace correctamente. Y cuarto, si hay dos maximos valores iguales, debe retornar la suma de ambos, lo cual también hace de manera correcta sin errores.

El método sum_to_n? es la seguiente:

```
def sum_to_n? arr, n
  # COMPLETA TU CODIGO
  arr.select { |a| a < n }.each do |elemento| 
    if arr.index(n-elemento) != nil and arr.index(n-elemento)!= arr.index(elemento)
      return true
    end
  end
  false
end
```

Y las pruebas que se le hace son las siguientes:

```
describe "#sum_to_n" do 
  context "a function to determine if the sum of two array elements is another array element" do
    context "give an empty array" do 
      arr = []
      it "returns false to any n value" do 
        expect(sum_to_n? arr,100).to eql(false)
      end
    end
    arr = [3,5,7,12,4]
    context "give a non-empty array: [3,5,7,12,4] and n = 15" do 
      n = 15
      it "return true" do
        expect(sum_to_n? arr,n).to eql(true)
      end
    end
    context "give a non-empty array: [3,5,7,12,4] and n = 2" do 
      n = 2 
      it "return false" do
        expect(sum_to_n? arr,n).to eql(false)
      end
    end
  end
end
```

El método retorna true si hay dos elementos del array cuya suma sea igual a n, para ello se probo que si se ingresa un array vacio retorne false, lo cual hace. Segundo, si hay en el array dos elementos que sume 'n' se retorne true, su principal función, lo cual sí hace correctamente. Tercero, si la suma de ningún par de elementos del array es igual 'n' entonces debe retornar false, en lo cual no hay fallos. 

## Parte 2

Para esta parte se debe de definir otros tres métodos : hello, starts_with_consonant? y binary_multiple_of_4:

El método hello :

```
def hello(name)
  # COMPLETA TU CODIGO
  if name =~ /^[A-Za-z]+$/
    return "Hello "+name
  end
end
```

Y las pruebas son las seguientes :

```
describe "#hello" do
  context "a function to concat 'hello' with a name" do
    context "give a name" do
      name = "Luis"
      it "return 'Hello Luis'" do
        expect(hello(name)).to eql("Hello "+name)
      end
    end
    context "give a string that isn't a name" do
      name = "carlos1432%"
      it "return nil"do 
        expect(hello(name)).to eql(nil)
      end
    end
  end
end
```

El método al ingresarle un nombre retorna "Hello " + nombre; para esto se usó expresiones regulares ya que un nombre solo puede conectar caracteres alfabéticos. Y eso se testeó, primero se ingreso una cadena con solo caracteres alfabeticos, lo cual retorno la cadena concatenada, lo cual fue correcto. Segundo, se ingreso una cadena con caracteres especiales y numeros además de caracteres alfabeticos, sin embargo eso no podria ser aceptado como nombre lo cual retorna nil.

El método starts_with_consonant? :

```
def starts_with_consonant?(s)
  # COMPLETA TU CODIGO 
  if s =~ /^[[:alpha:]&&[^AEIOUaeiou]]/
    return true
  end
  false
end
```

Y las pruebas que se le ejecutaron son las siguientes :

```
describe "#starts_with_consonant?" do
  context "a function to determine if a string that begins with a consonant" do
    context "give a string that begins with a consonant" do
      name = "Nicool"
      it "return true" do
        expect(starts_with_consonant? name).to eql(true)
      end
    end
    context "give a string that begins with a number" do
      name = "12Alex"
      it "return false"do 
        expect(starts_with_consonant? name).to eql(false)
      end
    end
    context "give a string that begins with a vowel" do
      name = "Andre"
      it "return false"do 
        expect(starts_with_consonant? name).to eql(false)
      end
    end
    context "give a string that begins with a special character" do
      name = "$Luis"
      it "return false"do 
        expect(starts_with_consonant? name).to eql(false)
      end
    end
  end
end
```

El método retorna true si la cadena empieza con una consonante mayúscula o minúscula, sino retorna false. Primero, se probo el caso en que debe retornar true es decir una cadena que empiece con una consonante, lo cual no hubo fallos. Segundo, se ingreso una cadena que empiece con un número,lo cual debe retornar false, sin fallos. Tercero, una cadena que empiece con una vocal, lo cual debe retornar false, y retorna false. Y cuarto, una cadena que empiece con un caracter especial, debe retornar false, lo cual hace.

El método binary_multiple_of_4? :

```
def binary_multiple_of_4? s
  # COMPLETA TU CODIGO
  if s =~ /^[01]+$/
    c = s.match(/^[01]+$/).to_s
    numeroBinario = c.to_i(2)
    return numeroBinario % 4 == 0
  end
  false
end
```

Y las pruebas que se le adjuntan :

```
describe "#binary_multiple_of_4?" do
  context "a function to determine if a binary number is a multiple of 4" do
    context "give a binary number as a string : '1001'" do
      s = '1001'
      it "return false" do
        expect(binary_multiple_of_4? s).to eql(false)
      end
    end
    context "give a binary number as a string : '1000'" do
      s = '1000'
      it "return true"do 
        expect(binary_multiple_of_4? s).to eql(true)
      end
    end
    context "give a non-binary number as a string : '1002'" do
      s = '1002'
      it "return false"do 
        expect(binary_multiple_of_4? s).to eql(false)
      end
    end
  end
end
```

El método debe determinar que la cadena ingresado se un número binario, luego determinar si ese número es múltiplo de 4, retorna true si cumple lo anterior, sino false. Para ellos, se ingreso una cadena con un número binario no múltiplo de 4, por lo que deberia de retornar false, y eso retornó. Segundo se ingresó una cadena con un número binario múltiplo de 4, por lo que debe ser true, al igualarlo, no encontró fallas. Y por ultimo, una cadena no binaria, debiendo retornar false, se igual con el método **to eql** y se ejecutó correctamente.

## Parte 3

Para esta parte se debe crear una clase, con el método constructor, los métodos getters and setters y un método price_as_string

La clase es la siguiente :

```
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
```

La prueba para el método constructor:

```
describe "constructor" do
    context "method to initilize a class" do
        context "give invalid isbn and valid number" do
            it "return Argumente Error, 'ISBN no puede estar vacio'" do
                expect { BookInStock.new("", 12.32) }.to raise_error(ArgumentError, "ISBN no puede estar vacio")
            end
            it "return Argumente Error, 'ISBN debe empezar con un número e incluir guiones'" do
                expect { BookInStock.new("re-123", 12.32) }.to raise_error(ArgumentError, "ISBN debe empezar con un número e incluir guiones")
            end
        end
        context "give valid isbn and invalid number" do
            it "return Argument Error, 'El precio debe ser mayor que cero'" do 
                expect { BookInStock.new("124-1243", -12) }.to raise_error(ArgumentError, "El precio debe ser mayor que cero")
            end
        end
        context "give invalid isbn and invalid number" do
            it "return Argumente Error, 'ISBN no puede estar vacio'" do
                expect { BookInStock.new("", -12) }.to raise_error(ArgumentError, "ISBN no puede estar vacio")
            end
            it "return Argumente Error, 'ISBN debe empezar con un número e incluir guiones'" do
                expect { BookInStock.new("re-123", 0) }.to raise_error(ArgumentError, "ISBN debe empezar con un número e incluir guiones")
            end
        end
        context "give valid isbn and valid number" do
            book = BookInStock.new("1141-1232", 30.00)
            it "return a object of BookInStock" do 
                expect(book).to be_a(BookInStock)
            end
        end
    end
end
```

Para este método se uso excepciones para que el número ISBN aceptado debe iniciar con números e incluir guiones, y no vacio; y el precio debe ser mayor a cero, ambos atributos de la clase. Para probar esto se creo la clase de manera incorrecta, para comparar si retorna un ArgumentError, con el mensaje correcto en cada caso, y si los parámetros en el método constructor son correctos debe ser un objeto de la clase BookInStock, por lo que se usó el método to be_a.
No se encontró fallas en ningún caso de prueba

Las pruebas para los métodos getters and setters :

```
describe "getters and setters" do
    context "method getter and setter for the class BookInStock" do 
        context "give a BookInStock object" do
            book = BookInStock.new("12312-123",24.40)   
            context "give a invalid precio to set" do 
                it "return Argument error" do 
                    expect { book.precio=-12 }.to raise_error(ArgumentError, "El precio debe ser mayor que cero")
                end
            end
            context "give a invalid isbn to set" do 
                it "return Argument error" do 
                    expect { book.numISBN="" }.to raise_error(ArgumentError, "ISBN no puede estar vacio")
                end
                it "return Argument error" do 
                    expect { book.numISBN="re-124" }.to raise_error(ArgumentError, "ISBN debe empezar con un número e incluir guiones")
                end
            end
            context "get precio" do 
                it "it must be the same as the one in the initialize method" do 
                    expect(book.precio).to eql(24.40)
                end
            end
            context "get ISBN number" do 
                it "it must be the same as the one in the initialize method" do 
                    expect(book.numISBN).to eql("12312-123")
                end
            end
        end
    end
end
```

Para estos métodos se usan las misma restricciones para ISBN y precio que en el método constructor. En el primer caso le asignamos un precio invalido y debe retornar una excepcion. En el segundo y tercer caso, se ingresó un número ISBN incorrecto por lo que deberia de retornar una excepcion, lo cual hace y con un mensaje dependiendo del error en el número ISBN. Y el cuarto caso, al ser validos ambos atributos debem ser iguales a los valores que retorna con el método get.

Las pruebas para el método price_as_string :

```
describe "#price_as_string" do 
    context "a method to format the price and to convert to string" do 
        context "give a object" do
            book = BookInStock.new("12321-12321",204.12434)
            it "return the price like string" do 
                expect(book.price_as_string).to eql("$204.12")
            end
        end
        context "set a price as integer" do 
            book = BookInStock.new("12321-12321",120)
            it "return the price like string" do 
                expect(book.price_as_string).to eql("$120.00")
            end
        end
    end
end
```

Este método formatea el precio para que sea un string antecedido por '$' y con dos decimales. Para ello, en el primer caso se ingresa un flotante, con más de dos decimales, y debe retornar '$' + precio con dos decimales, como un string; y eso retorna. En el segundo caso, el precio es un entero, sin decimales, por lo que debe retornar el entero con dos ceros como decimales, y eso lo hace correctamente.