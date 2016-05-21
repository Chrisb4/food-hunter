$( document ).ready(function() {

// functions ready at page load
getIngredients();

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

})
