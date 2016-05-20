$( document ).ready(function() {

getIngredients();

function getIngredients() {

    var ingredients = $.ajax({
      url: '/api/ingredients',
      type: 'GET',
      dataType: 'json',
    });

    ingredients.done(function(data){
      $('.ingredients').html('<p>' + data[1].name + '</p>');
    });

    ingredients.fail(function(jqXHR, textStatus, errorThrown){
      console.log(errorThrown);
    });
  }

})
