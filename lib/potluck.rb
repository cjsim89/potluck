class Potluck
  attr_reader :date,
              :dishes


  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    dish_category = []
    @dishes.each { |dish|
      if dish.category == category
        dish_category << dish
      end
    }
    dish_category
  end

  def menu
    unique_categories = @dishes.uniq { |dish| dish.category }
    categories = []
    unique_categories.each { |cat|
      get_all_from_category(cat.category).each { |d| categories.push(d.name) }

    } #this doesn't quite work but I am close...
    categories
  end





end
