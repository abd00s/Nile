require 'rails_helper'

# we use "describe <class>" to start writing tests
describe Product do
  # we then write examples (specifications) in our describe block using an it-do-end syntax
  it "must have a name" do
    # we instantiate a product object and assign it to "product"
    product = Product.new

    ## we can use "should" to expect a value
    expect(product.name).to be_nil

    #be_valid runs the predicate matcher be_valid which is going to call the ActiveRecord valid? method
    expect(product).to_not be_valid
  end

describe Product do
  #Arrange necessary preconditions and inputs
  let!(:product) { create(:product) }

  # Example spec
  it "must have a name" do
    #Act on the object of the method under spec
    product.name = ""

    #Assert that the expected results have occurred
    expect(product).to_not be_valid
  end
end

end