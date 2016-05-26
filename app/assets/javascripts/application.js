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
        var categoryId = data[i].id;
        var categoryName = data[i].name;
        var ingredients = data[i].ingredients;
        var $categoryButton = $('<button class="category-button" value="' +
          categoryId + '">' + categoryName + '</button>');

        $('.categories').append($categoryButton)

        for (var j = 0; j < ingredients.length; j++) {
          var ingredient = ingredients[j]
          $('.ingredients').append('<label class="ingredient" data-category-id="' +
            categoryId + '">' + '<input type="checkbox" name="ingredient" value=' +
            ingredient.id + '>' + ingredient.name + '</label>');
        }
      }

      $('.category-button').click(function(event) {
        var $button = $(event.currentTarget);
        var categoryId = $button.val();

        $('.ingredient').hide();
        $('.ingredient[data-category-id=' + categoryId + ']').show();

        $('.category-button').removeClass('active');
        $button.addClass('active');
      });

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

    if (checkedIngredients.length === 0) {
      return;
    }

    var recipes = $.ajax({
      url: '/api/recipes',
      type: 'GET',
      dataType: 'json',
      data: { ingredients: checkedIngredients }
    });

    recipes.done(function(data){
      for (var i = 0; i < data.length; i++) {
        $('.recipes').append('<div class="recipe">' +
          '<div><img src="' + data[i].photo_url + '"></div>' +
          '<h4 class="recipe-title">' + data[i].description + '</h4>' +
          '<p class="cooking-time">' + 'Cooking Time: ' + data[i].minutes + ' minute(s)' +
          '</p>' + '<p>' + data[i].directions + '</p>' + '</div>');
      }
    });

    recipes.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }

});
