//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {

  // functions and variables ready at page load
  getIngredients();

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
        $('.ingredients').append('<label class="ingredient">' +
          '<input type="checkbox" name="ingredient" value=' + data[i].id + '>' +
          data[i].name + '</label>');
      }

      $('input:checkbox[name=ingredient]').change(function(e) {
        var checkedIngredients = [];
        $("input:checkbox[name=ingredient]:checked").each(function(){
          checkedIngredients.push($(this).val());
        });
        getRecipes(checkedIngredients);
      });

    });

    ingredients.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }


  // gets recipes from api
  function getRecipes(checkedIngredients) {
    $('.recipes').empty();

    var recipes = $.ajax({
      url: '/api/recipes',
      type: 'GET',
      dataType: 'json',
      data: { ingredients: checkedIngredients }
    });

    recipes.done(function(data){
      for (var i = 0; i < data.length; i++) {
        $('.recipes').append('<div class="recipe">' +
          '<h4 class="recipe-title">' + data[i].description + '</h4>' +
          '<p class="cooking-time">' + 'Cooking Time: ' + data[i].minutes + ' minute(s)' + '</p>' +
          '<p>' + data[i].directions + '</p>' + '</div>');
      }
    });

    recipes.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }

});
