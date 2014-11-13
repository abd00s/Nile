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


  #Arrange necessary preconditions and inputs
  let!(:product) { create(:product) }

  # Example spec
  it "must have a name" do
    #Act on the object of the method under spec
    product.name = ""

    #Assert that the expected results have occurred
    expect(product).to_not be_valid
end

  #Name is set correctly 

  let!(:product) { create(:product) }

  it "must have a name" do
  	product.name = "TEST USER"

  	expect(product.name).to eq("TEST USER")
  end

  #Name must be present 

  let!(:product) { create(:product) }

  it "name has to be present" do
  	product.name = "TEST USER"

  	expect(product.name).not_to be_nil
  end

  #Name must be a string 

  let!(:product) { create(:product) }

  it "name has to be a stirng" do
  	product.name = "TEST USER"

  	expect(product.name.class).to eq(String)
  end

	#Description must be presnt and be a string 

	let!(:product) { create(:product) }

	it "name has to be a stirng" do
	product.description = "TEST DESCRIPTION"

	expect(product.description.class).to eq(String)
	expect(product.description).not_to be_nil
	end

  #Price must be a an integer 

  let!(:product) { create(:product) }

  it "price needs to be an integer" do
  	product.price_in_cents = 1000

  	expect(product.price_in_cents.class).to eq(Fixnum)
  end

  #Product needs all three attribs

  let!(:product) { create(:product) }

  it "must have a name" do
  	product.name = "TEST USER"
  	product.description = "DESCRIPTION OF PRODUCT"
  	product.price_in_cents = 10000

  	expect(product).to be_valid
  end



end