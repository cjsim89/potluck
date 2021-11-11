require './lib/dish'

dish = Dish.new("Couscous salad", :appetizer)

RSpec.describe Dish do
  it 'exists' do
    expect(dish).to be_instance_of(Dish)
  end

end


# require 'pry'; binding.pry;
