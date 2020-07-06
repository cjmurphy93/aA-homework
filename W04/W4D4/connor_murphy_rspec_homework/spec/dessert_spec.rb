require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:pudding) {Dessert.new("pudding", 20, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(pudding.type).to eq('pudding')
    end

    it "sets a quantity" do
      expect(pudding.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(pudding.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("pudding", "twenty", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(pudding.ingredients).to_not include('chocolate')
      pudding.add_ingredient('chocolate')
      expect(pudding.ingredients).to include('chocolate')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      pudding.add_ingredient('chocolate')
      pudding.add_ingredient('water')
      pudding.add_ingredient('packet')
      test_ing = pudding.ingredients.dup
      pudding.mix!
      pudding.mix!
      pudding.mix!
      pudding.mix!
      expect(pudding.ingredients).to_not eq(test_ing)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      pudding.eat(1)
      expect(pudding.quantity).to eq(19)
    end

    it "raises an error if the amount is greater than the quantity" do

    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Connor")
      expect(pudding.serve).to eq("Chef Connor has made 20 puddings!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(pudding)
      pudding.make_more
    end
  end
end
