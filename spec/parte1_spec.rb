require "ruby_intro"

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
