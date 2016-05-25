# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all

categories = Category.create([

{name: "Protein",
},
{name: "Vegetables",
},
{name: "Fruit",
},
{name: "Grains",
},
{name: "Dairy",
},
{name: "Pantry",
},
{name: "Nuts and Seeds",
}
])

Ingredient.destroy_all

ingredients = Ingredient.create([

{name: "Peanut Butter",
  category_id: 6
},
{name: "Lettuce",
  category_id: 2
},
{name: "Cauliflower",
  category_id: 2
},
{name: "Avocado",
  category_id: 2
},
{name: "Green Onion",
  category_id: 2
},
{name: "Banana",
  category_id: 3
},
{name: "Raisins",
  category_id: 6
},
{name: "Apple Cider Vinegar",
  category_id: 6
},
{name: "Onion",
  category_id: 2
},
{name: "Cabbage",
  category_id: 2
},
{name: "Garlic",
  category_id: 2
},
{name: "Lentils",
  category_id: 6
},
{name: "Eggs",
  category_id: 1
},
{name: "Green Peppers",
  category_id: 2
},
{name: "Red Peppers",
  category_id: 2
},
{name: "Quinoa",
  category_id: 4
},
{name: "Butter",
  category_id: 5
},
{name: "Rice",
  category_id: 4
},
{name: "Black Beans",
  category_id: 6
},
{name: "Carrots",
  category_id: 2
},
{name: "Almonds",
  category_id: 7
},
{name: "Tuna",
  category_id: 1
},
{name: "Mayo",
  category_id: 6
},
{name: "Cucumbers",
  category_id: 2
}
])

Recipe.destroy_all

recipes = Recipe.create([

{name: "Peanut Butter Spoon",
 directions: "Grab a spoon.  Pull out a heaping pile of peanut butter and enjoy!  (If you can't find a spoon, your hands will work in a pinch!)",
 minutes: 1,
 description: "Pure Peanut Bliss",
 ingredients: [ingredients[0]]
},
{name: "Hard Boiled Eggs",
 directions: "Fill a pot with 5 cups water.  Bring to a rolling boil.  Add eggs and set timer for 13 minutes. Remove egss and shock them in an ice bath.  Enjoy!",
 minutes: 20,
 description: "Classic Egg Magic",
 ingredients: [ingredients[12]]
},
{name: "Omelet",
 directions: "Heat butter in skillet over medium high heat.  Add diced onions and red peppers.  Sautee for 5 minutes.  Lower heat to medium low, add whisked eggs.  Cook until done.",
 minutes: 20,
 description: "Breakfast Goodness",
 ingredients: [ingredients[12], ingredients[8], ingredients[14]]
},
{name: "Simple Black Beans",
 directions: "Heat 2 Tablespoons of butter in a saucepan over medium low. Add onions and garlic, cook for 3 minutes.  Add black beans, salt, pepper, chili powder, and cayenne pepper.  Cook for 6 minutes until hot.",
 minutes: 15,
 description: "Tasty Black Beans",
 ingredients: [ingredients[18], ingredients[8], ingredients[10]]
},
{name: "Sticky Nut Balls",
 directions: "In a medium size bowl, mix peanut butter, almonds and raisins.  Form into balls.  Place on a sterling silver tray with a doily.",
 minutes: 10,
 description: "Classy and Sloppy",
 ingredients: [ingredients[0], ingredients[20], ingredients[6]]
},
{name: "Fried Cabbage",
 directions: "Bring 2 Tablespoons Olive Oil to 300 degrees F over medium high heat.  Add Julienned cabbage and onions.  Sautee for 15 minutes until cabbage and onions begin to caramelize.  Hit it with apple cider vinegar to deglaze the skillet.  Enjoy!",
 minutes: 25,
 description: "Golden Delicious",
 ingredients: [ingredients[9], ingredients[8]]
},
{name: "Snowmen Nose",
 directions: "Wash carrots under running water. Don't be a sucker and remove the skin!!! (That's where all the nutrients are!)",
 minutes: 1-3,
 description: "Pretend you're a Zombie, for Snowmen!!!",
 ingredients: [ingredients[19]]
},
{name: "Monkeys Delight",
 directions: "Peel banana, eat.",
 minutes: 1,
 description: "Banana Minimalism",
 ingredients: [ingredients[5]]
},
{name: "Ants on a log",
 directions: "Peel banana, spread peanut butter on top, sprinkle with raisins.",
 minutes: 5,
 description: "Not just for Kids",
 ingredients: [ingredients[5], ingredients[0], ingredients[6]]
},
{name: "Quick Slaw",
 directions: "Chop cabbage, onions and carrots in thin strips. Toss in Olive Oil and Apple Cider Vinegar. ",
 minutes: 10,
 description: "Like Crunchy Salad",
 ingredients: [ingredients[9], ingredients[8]]
}
])
