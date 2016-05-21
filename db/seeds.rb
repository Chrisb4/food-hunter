# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.destroy_all

ingredients = Ingredient.create([

{name: "Peanut Butter"
},
{name: "Lettuce"
},
{name: "Cauliflower"
},
{name: "Avocado"
},
{name: "Green Onion"
},
{name: "Banana"
},
{name: "Raisins"
},
{name: "Apple Cider Vinegar"
},
{name: "Onion"
},
{name: "Cabbage"
},
{name: "Garlic"
},
{name: "Lentils"
},
{name: "Eggs"
},
{name: "Green Peppers"
},
{name: "Red Peppers"
},
{name: "Quinoa"
},
{name: "Butter"
},
{name: "Rice"
},
{name: "Black Beans"
},
{name: "Carrots"
},
{name: "Almonds"
},
{name: "Tuna"
},
{name: "Mayo"
},
{name: "Cucumbers"
}
])

Recipe.destroy_all

recipes = Recipe.create([

{name: "Peanut Butter Spoon",
 directions: "Grab a spoon.  Pull out a heaping pile of peanut butter and enjoy!  (If you can't find a spoon, your hands will work in a pinch!)",
 minutes: 1,
 description: "Pure Peanut Bliss"
},
{name: "Hard Boiled Eggs",
 directions: "Fill a pot with 5 cups water.  Bring to a rolling boil.  Add eggs and set timer for 13 minutes. Remove egss and shock them in an ice bath.  Enjoy!",
 minutes: 20,
 description: "Classic Egg Magic"
},
{name: "Omelet",
 directions: "Heat butter in skillet over medium high heat.  Add diced onions and red peppers.  Sautee for 5 minutes.  Lower heat to medium low, add whisked eggs.  Cook until done.",
 minutes: 20,
 description: "Breakfast Goodness"
},
{name: "Simple Black Beans",
 directions: "Heat 2 Tablespoons of butter in a saucepan over medium low. Add onions and garlic, cook for 3 minutes.  Add black beans, salt, pepper, chili powder, and cayenne pepper.  Cook for 6 minutes until hot.",
 minutes: 15,
 description: "Tasty Black Beans"
},
{name: "Sticky Nut Balls",
 directions: "In a medium size bowl, mix peanut butter, almonds and raisins.  Form into balls.  Place on a sterling silver tray with a doily.",
 minutes: 10,
 description: "Classy and Sloppy"
},
{name: "Fried Cabbage",
 directions: "Bring 2 Tablespoons Olive Oil to 300 degrees F over medium high heat.  Add Julienned cabbage and onions.  Sautee for 15 minutes until cabbage and onions begin to caramelize.  Hit it with apple cider vinegar to deglaze the skillet.  Enjoy!",
 minutes: 25,
 description: "Golden Delicious"
},
{name: "Snowmen Nose",
 directions: "Wash carrots under running water. Don't be a sucker and remove the skin!!! (That's where all the nutrients are!)",
 minutes: 1-3,
 description: "Pretend you're a Zombie, for Snowmen!!!"
},
{name: "Monkeys Delight",
 directions: "Peel banana, eat.",
 minutes: 1,
 description: "Banana Minimalism"
},
{name: "Ants on a log",
 directions: "Peel banana, spread peanut butter on top, sprinkle with raisins.",
 minutes: 5,
 description: "Not just for Kids"
},
{name: "Quick Slaw",
 directions: "Chop cabbage, onions and carrots in thin strips. Toss in Olive Oil and Apple Cider Vinegar. ",
 minutes: 10,
 description: "Like Crunchy Salad"
}
])
