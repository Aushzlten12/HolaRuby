require 'ruby_intro'

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
