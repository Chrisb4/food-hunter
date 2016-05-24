$( document ).ready(function() {

// functions ready at page load
getIngredients();
getRecipes();

// FUNCTIONS
// gets ingredients from api
function getIngredients() {

  var ingredients = $.ajax({
    url: '/api/ingredients',
    type: 'GET',
    dataType: 'json',
  });

  ingredients.done(function(data){
    for (var i = 0; i < data.length; i++) {
      $('.ingredients').append('<label class="ingredient"><input type="checkbox">' +
        data[i].name + '</label>');
    }
  });

  ingredients.fail(function(jqXHR, textStatus, errorThrown){
    console.log(errorThrown);
  });
}

// gets recipes from api
function getRecipes() {

  var recipes = $.ajax({
    url: '/api/recipes',
    type: 'GET',
    dataType: 'json',
  });

  recipes.done(function(data){
    for (var i = 0; i < data.length; i++) {
      $('.recipes').append('<div class="recipe">' +
        '<h4 class="recipe-title">' + data[i].description + '</h4>' +
        '<p class="cooking-time">' + 'Cooking Time: ' + data[i].minutes + ' minutes' + '</p>' +
        '<p>' + data[i].directions + '</p>' + '</div>');
    }
  });

  recipes.fail(function(jqXHR, textStatus, errorThrown){
    console.log(errorThrown);
  });
}

})
