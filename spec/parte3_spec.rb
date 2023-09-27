require 'ruby_intro'

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