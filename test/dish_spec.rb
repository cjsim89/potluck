require './lib/dish'
require './lib/potluck'

dish = Dish.new("Couscous salad", :appetizer)
dish_2 = Dish.new("Meatballs", :entree)
dish_3 = Dish.new("Summer Pizza", :appetizer)
dish_4 = Dish.new("Roast Pork", :entree)
dish_5 = Dish.new("Candy Salad", :dessert)

potluck = Potluck.new("7-13-18")
potluck.add_dish(dish)
potluck.add_dish(dish_2)
potluck.add_dish(dish_3)
potluck.add_dish(dish_4)
potluck.add_dish(dish_5)


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

  it 'has 5 dishes' do
    expect(potluck.dishes.length).to eq(5)
  end

  it 'has 2 appetizers' do
    expect(potluck.get_all_from_category(:appetizer).length).to eq(2)
  end

  it 'has first appetizer as Couscous salad' do
    expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous salad")
  end

  it 'has a menu' do
    expect(potluck.menu).to be_instance_of(Array)
  end

end



  # require 'pry'; binding.pry;
