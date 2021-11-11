require './lib/dish'
require './lib/potluck'

dish = Dish.new("Couscous salad", :appetizer)
dish_2 = Dish.new("Meatballs", :entree)
potluck = Potluck.new("7-13-18")
potluck.add_dish(dish)
potluck.add_dish(dish_2)


RSpec.describe Dish do
  it 'exists' do
    expect(dish).to be_instance_of(Dish)
  end

  it 'has name' do
    expect(dish.name).to eq("Couscous salad")
  end
  it 'has category' do
    expect(dish.category).to eq(:appetizer)
  end



end

RSpec.describe Potluck do
  it 'exists' do
    expect(potluck).to be_instance_of(Potluck)
  end

  it 'has date' do
    expect(potluck.date).to eq("7-13-18")
  end

  it 'has dishes' do
    expect(potluck.dishes).to be_instance_of(Array)
  end

  it 'has 2 dishes' do
    expect(potluck.dishes.length).to eq(2)
  end
end



# require 'pry'; binding.pry;
