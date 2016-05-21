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
{name: "Cumbers"
}
])
