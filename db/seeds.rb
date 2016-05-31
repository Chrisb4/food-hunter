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
{name: "Fruits",
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
  category: categories[5]
},
{name: "Lettuce",
  category: categories[1]
},
{name: "Cauliflower",
  category: categories[1]
},
{name: "Avocado",
  category: categories[1]
},
{name: "Red Onion",
  category: categories[1]
},
{name: "Banana",
  category: categories[2]
},
{name: "Raisins",
  category: categories[5]
},
{name: "Apple Cider Vinegar",
  category: categories[5]
},
{name: "White Onion",
  category: categories[1]
},
{name: "Cabbage",
  category: categories[1]
},
{name: "Garlic",
  category: categories[1]
},
{name: "Lentils",
  category: categories[5]
},
{name: "Eggs",
  category: categories[0]
},
{name: "Green Peppers",
  category: categories[1]
},
{name: "Red Peppers",
  category: categories[1]
},
{name: "Quinoa",
  category: categories[3]
},
{name: "Butter",
  category: categories[4]
},
{name: "Brown Rice",
  category: categories[3]
},
{name: "Black Beans",
  category: categories[5]
},
{name: "Carrots",
  category: categories[1]
},
{name: "Almonds",
  category: categories[6]
},
{name: "Canned Tuna",
  category: categories[0]
},
{name: "Mayo",
  category: categories[5]
},
{name: "Cucumber",
  category: categories[1]
},
{name: "Tomato",
  category: categories[1]
},
{name: "Sunflower Seeds",
  category: categories[6]
},
{name: "Bacon",
  category: categories[0]
},
{name: "Watermelon",
  category: categories[2]
},
{name: "Cantaloupe",
  category: categories[2]
},
{name: "Honeydew Melon",
  category: categories[2]
},
{name: "Lime",
  category: categories[2]
},
{name: "Lemon",
  category: categories[2]
},
{name: "Goat Cheese",
  category: categories[4]
},
{name: "Peach",
  category: categories[2]
},
{name: "Mozzarella",
  category: categories[4]
},
{name: "Prosciutto",
  category: categories[0]
},
{name: "Ground Beef",
  category: categories[0]
},
{name: "Steak",
  category: categories[0]
},
{name: "Chicken Breast",
  category: categories[0]
},
{name: "Ground Turkey",
  category: categories[0]
},
{name: "Salmon",
  category: categories[0]
},
{name: "Shrimp",
  category: categories[0]
},
{name: "Pork Chop",
  category: categories[0]
},
{name: "Blackberries",
  category: categories[2]
},
{name: "Cherries",
  category: categories[2]
},
{name: "Grapefruit",
  category: categories[2]
},
{name: "Kiwi",
  category: categories[2]
},
{name: "Mango",
  category: categories[2]
},
{name: "Orange",
  category: categories[2]
},
{name: "Plantain",
  category: categories[2]
},
{name: "Brazil Nuts",
  category: categories[6]
},
{name: "Cashews",
  category: categories[6]
},
{name: "Macadamia Nuts",
  category: categories[6]
},
{name: "Pecans",
  category: categories[6]
},
{name: "Pistachio",
  category: categories[6]
},
{name: "Flax Seeds",
  category: categories[6]
},
{name: "Walnuts",
  category: categories[6]
},
{name: "Almond Flour",
  category: categories[5]
},
{name: "Capers",
  category: categories[5]
},
{name: "Dried Fruit",
  category: categories[5]
},
{name: "Pickles",
  category: categories[5]
},
{name: "Diced Tomatoes",
  category: categories[5]
},
{name: "Broth",
  category: categories[5]
}
])


Recipe.destroy_all

recipes = Recipe.create([

{name: "Peanut Butter Spoon",
 directions: "Grab a spoon.  Pull out a heaping pile of peanut butter and enjoy!  (If you can't find a spoon, your hands will work in a pinch!)",
 minutes: 1,
 description: "Pure Peanut Bliss",
 photo: File.new("#{Rails.root}/db/recipe_images/peanut_butter_spoon.jpg"),
 ingredients: [ingredients[0]]
},
{name: "Hard Boiled Eggs",
 directions: "Fill a pot with 5 cups water.  Bring to a rolling boil.  Add eggs and set timer for 13 minutes. Remove egss and shock them in an ice bath.  Enjoy!",
 minutes: 20,
 description: "Classic Egg Magic",
 photo: File.new("#{Rails.root}/db/recipe_images/hard-boiled-egg.jpeg"),
 ingredients: [ingredients[12]]
},
{name: "Omelet",
 directions: "Heat butter in skillet over medium high heat.  Add diced onions and red peppers.  Sautee for 5 minutes.  Lower heat to medium low, add whisked eggs.  Cook until done.",
 minutes: 20,
 description: "Breakfast Goodness",
 photo: File.new("#{Rails.root}/db/recipe_images/omelet.jpeg"),
 ingredients: [ingredients[12], ingredients[8], ingredients[14], ingredients[16]]
},
{name: "Simple Black Beans",
 directions: "Heat 2 Tablespoons of butter in a saucepan over medium low. Add onions and garlic, cook for 3 minutes.  Add black beans, salt, pepper, chili powder, and cayenne pepper.  Cook for 6 minutes until hot.",
 minutes: 15,
 description: "Tasty Black Beans",
 photo: File.new("#{Rails.root}/db/recipe_images/black-beans.jpeg"),
 ingredients: [ingredients[18], ingredients[8], ingredients[10], ingredients[16]]
},
{name: "Sticky Nut Balls",
 directions: "In a medium size bowl, mix peanut butter, almonds and raisins.  Form into balls.  Place on a sterling silver tray with a doily.",
 minutes: 10,
 description: "Classy and Sloppy",
 photo: File.new("#{Rails.root}/db/recipe_images/pb-almond-balls.jpeg"),
 ingredients: [ingredients[0], ingredients[20], ingredients[6]]
},
{name: "Fried Cabbage",
 directions: "Bring 2 Tablespoons Olive Oil to 300 degrees F over medium high heat.  Add Julienned cabbage and onions.  Sautee for 15 minutes until cabbage and onions begin to caramelize.  Hit it with apple cider vinegar to deglaze the skillet.  Enjoy!",
 minutes: 25,
 description: "Golden Delicious",
 photo: File.new("#{Rails.root}/db/recipe_images/fried-cabbage.jpeg"),
 ingredients: [ingredients[9], ingredients[8], ingredients[7]]
},
{name: "Snowmen Nose",
 directions: "Wash carrots under running water. Don't be a sucker and remove the skin!!! (That's where all the nutrients are!)",
 minutes: 3,
 description: "Pretend you're a Zombie, for Snowmen!!!",
 photo: File.new("#{Rails.root}/db/recipe_images/carrots.jpeg"),
 ingredients: [ingredients[19]]
},
{name: "Monkeys Delight",
 directions: "Peel banana, eat.",
 minutes: 1,
 description: "Banana Minimalism",
 photo: File.new("#{Rails.root}/db/recipe_images/banana-fb.jpg"),
 ingredients: [ingredients[5]]
},
{name: "Ants on a log",
 directions: "Peel banana, spread peanut butter on top, sprinkle with raisins.",
 minutes: 5,
 description: "Not just for Kids",
 photo: File.new("#{Rails.root}/db/recipe_images/banana_log_001.jpg"),
 ingredients: [ingredients[5], ingredients[0], ingredients[6]]
},
{name: "Quick Slaw",
 directions: "Chop cabbage, onions and carrots in thin strips. Toss in Olive Oil and Apple Cider Vinegar. ",
 minutes: 10,
 description: "Like Crunchy Salad",
 photo: File.new("#{Rails.root}/db/recipe_images/quick-slaw.jpeg"),
 ingredients: [ingredients[9], ingredients[8], ingredients[19], ingredients[7]]
},
{name: "BLT Breakfast Salad With Soft Boiled Eggs & Avocado",
 directions: "In a large bowl combine 1 bag of lettuce, 1/4 of a red onion, 1 tomato, 1/3 cup roasted sunflower seeds and chopped up 6 pieces of crispy bacon. Boil 2 eggs, peel them, slice them open and serve them on top of your salad with some avocado slices. Add dressing of preference or some Olive Oil",
 minutes: 15,
 description: "BLT Breakfast Salad",
 photo: File.new("#{Rails.root}/db/recipe_images/breakfast-salad.jpg"),
 ingredients: [ingredients[1], ingredients[4], ingredients[24], ingredients[25], ingredients[26], ingredients[3], ingredients[12]]
},
{name: "Cauliflower Rice",
 directions: "Wash and thoroughly dry 1 head of cauliflower, then remove all greens and cut into 4 even sections. With a box grater or a food processor, to grate or pulse the cauliflower into the size of rice, leaving any large, tough stems behind. Transfer to a clean towel or paper towel and press to remove any excess moisture, which can make your dish soggy. Once you have your cauliflower rice, it's easy to cook! Simply sauté in a large skillet over medium heat in 1 Tbsp oil. Cover with a lid so the cauliflower steams and becomes more tender. Cook for a total of 5-8 minutes.",
 minutes: 10,
 description: "Cauliflower Rice",
 photo: File.new("#{Rails.root}/db/recipe_images/Cauliflower-Rice.jpg"),
 ingredients: [ingredients[2]]
},
{name: "Quinoa Salad with caramelized onions",
 directions: "Place 1¾ cups of rinsed quinoa and 2½ cups water in a saucepan. Bring to a boil, reduce heat to medium low, and cook until most of the water is absorbed. Slap on a tight-fitting lid on the quinoa, turn the heat to low, and let it cook for 15 minutes more. Turn off the heat. In a skillet, heat olive oil. Add 2 large red onions and 1 tbsp of sugar and saute over medium-low heat about 10-15 minutes until the onions turn a caramel-brown and soft. Remove the onions from the saucepan with a slotted spoon and set aside. To the same pan, add 2 large green peppers and 4 cloves of minced garlic and saute until the peppers turn tender but are still crunchy. Stir in the pepper. Fluff the quinoa with a fork to separate the grains, and add to the saucepan along with the onions. Stir everything together and turn off the heat.",
 minutes: 30,
 description: "Quinoa Salad",
 photo: File.new("#{Rails.root}/db/recipe_images/quinoa_salad.jpg"),
 ingredients: [ingredients[15], ingredients[4], ingredients[10], ingredients[13]]
},
{name: "Lentils, Brown Rice and Caramelized Onions",
 directions: "Bring 1 cup of rice and 2 cups water to a boil in a medium pot. Reduce heat to low, cover pot and simmer until liquid is completely absorbed and rice is just tender, about 40 minutes. Meanwhile, in a separate medium pot, bring 1 cup of dried lentils and 5 cups water to a boil. Reduce heat to low, cover partially and simmer until lentils are tender but not falling apart, about 30 minutes. Drain, rinse in cold water and drain again. While lentils and rice cook, bring 1/2 cup water to a simmer in a large skillet over medium-high heat. Add 3 medium-sized sliced white onions and cook until beginning to soften, stirring occasionally, about 8 minutes. Add 1/4 cup water, cumin, cinnamon and salt and reduce heat to medium. Continue to cook about 15 minutes or until onions are soft and browned, stirring frequently and adding 1/4 cup water halfway through cooking or if onions begin to stick to skillet. Remove 1 cup cooked onions and set aside. Stir lentils, rice and pepper into skillet with remaining onions. To serve, top with reserved onions.",
 minutes: 45,
 description: "Lentils and Rice Bowl",
 photo: File.new("#{Rails.root}/db/recipe_images/lentils-and-rice.jpg"),
 ingredients: [ingredients[17], ingredients[11], ingredients[8]]
},
{name: "Dillicious Tuna Cucumber Salad",
 directions: "Combine 2 cans of tuna, 1 cup of peeled and diced cucumbers, 1/4 cup of chopped white onion, 2 tablespoons chopped fresh dill, 2 tablespoons mayonnaise, 1/2 tablespoon Dijon mustard and pepper.",
 minutes: 15,
 description: "Dillicious Tuna Cucumber Salad",
 photo: File.new("#{Rails.root}/db/recipe_images/dillicious-tuna-cucumber-salad.jpg"),
 ingredients: [ingredients[21], ingredients[23], ingredients[8], ingredients[22]]
},
{name: "Fruit Salad Kabobs",
 directions: "Slice the watermelon, cantaloupe and honeydew into bite-sized chunks, or use a cookie cutter to form them into shapes. Place the sliced fruit into a bowl. Skewer a piece of watermelon, cantaloupe and honeydew on each toothpick. If you are feeling frisky, while the fruit is still in the bowl, add vodka until all of the fruit is submerged. Cover bowl with tinfoil and refrigerate for at least two hours, or overnight.",
 minutes: 15,
 description: "Fruit Salad Kabobs",
 photo: File.new("#{Rails.root}/db/recipe_images/Fruit-Salad-Kabobs.jpg"),
 ingredients: [ingredients[27], ingredients[28], ingredients[29]]
},
{name: "Cantaloupe Goat Cheese Salad",
 directions: "Remove peel and seeds from cantaloupe; discard. Cut it into 1/2-inch chunks. Arrange on large plate. Drizzle fresh lime juice (or lemon juice) and extra virgin olive oil over cantaloupe, then sprinkle with salt. Scatter goat cheese over it.",
 minutes: 20,
 description: "Cantaloupe Goat Cheese Salad",
 photo: File.new("#{Rails.root}/db/recipe_images/cantaloupe-goat-cheese.jpg"),
 ingredients: [ingredients[30], ingredients[31], ingredients[32], ingredients[28]]
},
{name: "Melon-and-Peach Salad with Prosciutto and Mozzarella",
 directions: "In a bowl, toss the melon and peach with olive oil and balsamic vinegar; season with salt and pepper. Let stand for 5 minutes. Stir in the cheese. Transfer the salad to a platter, top with the prosciutto and serve.",
 minutes: 30,
 description: "Yummy stuff called a salad",
 photo: File.new("#{Rails.root}/db/recipe_images/melon-peach-salad.jpg"),
 ingredients: [ingredients[33], ingredients[34], ingredients[35], ingredients[29]]
}
])
