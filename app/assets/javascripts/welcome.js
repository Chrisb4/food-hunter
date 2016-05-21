$( document ).ready(function() {

// functions ready at page load
getIngredients();
getRecipes();

// FUNCTIONS
function getIngredients() {

  var ingredients = $.ajax({
    url: '/api/ingredients',
    type: 'GET',
    dataType: 'json',
  });

  ingredients.done(function(data){
    for (var i = 0; i < data.length; i++) {
      $('.ingredients').append('<p>' + data[i].name + '</p>');
    }
  });

  ingredients.fail(function(jqXHR, textStatus, errorThrown){
    console.log(errorThrown);
  });
}

function getRecipes() {

  var recipes = $.ajax({
    url: '/api/recipes',
    type: 'GET',
    dataType: 'json',
  });

  recipes.done(function(data){
    for (var i = 0; i < data.length; i++) {
      $('.recipes').append('<p>' + data[i].name + '</p>');
    }
  });

  recipes.fail(function(jqXHR, textStatus, errorThrown){
    console.log(errorThrown);
  });
}

})
