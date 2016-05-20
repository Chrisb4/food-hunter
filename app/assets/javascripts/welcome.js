$( document ).ready(function() {

getIngredients();

function getIngredients() {

    var ingredients = $.ajax({
      url: '/api/ingredients',
      type: 'GET',
      dataType: 'json',
    });

    ingredients.done(function(data){
      debugger;
          $('.ingredients').html('<p>' + data.ingredients + '</p>');
    });

    ingredients.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }

})
