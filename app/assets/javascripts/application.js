//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$( document ).ready(function() {

  // functions and variables ready at page load
  var selectedIngredients = [];
  getIngredients();

  // FUNCTIONS
  // counts the ingredients that are selected per category
  function updateCategoriesCounter() {
    $('.category-button').each(function(index, button) {
      var $button = $(button);
      var categoryId = $button.val();
      var selectedCategoryCount = $('.ingredients .ingredient-button.selected[data-category-id=' + categoryId + ']').length;
      $button.find('.ingredient-counter').text(selectedCategoryCount);

      if (selectedCategoryCount === 0) {
        $button.find('.ingredient-counter').hide();
      } else {
        $button.find('.ingredient-counter').show();
      }
    });

    if (selectedIngredients.length === 0) {
      $('.instructions').show();
      $('.category-button').removeClass('active');
      $('.ingredients .ingredient-button').removeClass('category-selected');
    } else {
      $('.instructions').hide();
    }
  };

  // gets ingredients from api
  function getIngredients() {

    var ingredients = $.ajax({
      url: '/api/ingredients',
      type: 'GET',
      dataType: 'json'
    });

    ingredients.done(function(data){
      for (var i = 0; i < data.length; i++) {
        var categoryId = data[i].id;
        var categoryName = data[i].name;
        var ingredients = data[i].ingredients;
        var $categoryButton = $('<button class="category-button" value="' +
          categoryId + '">' + categoryName + '<span class="ingredient-counter"></span></button>');

        $('.categories').append($categoryButton);

        for (var j = 0; j < ingredients.length; j++) {
          var ingredient = ingredients[j];
          var $ingredientButton = '<button class="ingredient-button"' +
                                  ' data-category-id="' + categoryId + '"' +
                                  ' data-ingredient-id="' + ingredient.id + '">' +
                                  ingredient.name +
                                  '</button>';

          $('.ingredients').append($ingredientButton);
          $('.selected-ingredients-display').append($ingredientButton);
        }
      }

      updateCategoriesCounter();

      $('.category-button').click(function(event) {
        var $button = $(event.currentTarget);
        var categoryId = $button.val();

        $('.ingredients .ingredient-button').removeClass('category-selected');
        $('.ingredients .ingredient-button[data-category-id=' + categoryId + ']').addClass('category-selected');

        $('.category-button').removeClass('active');
        $button.addClass('active');
      });

      $('.ingredients .ingredient-button').click(function(event) {
        var $button = $(event.currentTarget);
        var ingredientId = $button.data('ingredient-id');

        $('.ingredient-button[data-ingredient-id=' + ingredientId + ']').addClass('selected');

        selectedIngredients.push(ingredientId);

        $('.selected-ingredients-display').show();

        updateCategoriesCounter();

        getRecipes();
      });

      $('.selected-ingredients-display .ingredient-button').click(function(event) {
        var $button = $(event.currentTarget);
        var ingredientId = $button.data('ingredient-id');
        var selectedIngredientIndex = selectedIngredients.indexOf(ingredientId);

        selectedIngredients.splice(selectedIngredientIndex, 1);

        if (selectedIngredients.length === 0) {
          $('.selected-ingredients-display').hide();
        }

        getRecipes();

        $('.ingredient-button[data-ingredient-id=' + ingredientId + ']').removeClass('selected');

        updateCategoriesCounter();
      });

    });

    ingredients.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }

  // gets recipes from api
  function getRecipes() {
    $('.recipes').empty();

    if (selectedIngredients.length === 0) {
      return;
    }

    var recipes = $.ajax({
      url: '/api/recipes',
      type: 'GET',
      dataType: 'json',
      data: { ingredients: selectedIngredients }
    });

    recipes.done(function(data){
      for (var i = 0; i < data.length; i++) {
        var minutesLabel = 'Minute';
        if (data[i].minutes > 1) {
          minutesLabel = minutesLabel + 's';
        }
        $('.recipes').append('<div class="recipe">' +
          '<div class="image" style="background-image: url(' + data[i].photo_url + ')"></div>' +
          '<h4 class="recipe-title">' + data[i].name + '</h4>' +
          '<p class="cooking-time">' + data[i].minutes + ' ' + minutesLabel + '</p>' +
          '<p class="recipe-directions">' + data[i].directions + '</p></div>');
      }
    });

    recipes.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }

});
