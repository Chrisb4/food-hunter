module Api
  class RecipesController < ApplicationController
    def index
      ingredients = params[:ingredients]
      recipes = []

      Recipe.all.includes(:ingredients).each do |recipe|
        match = true

        recipe.ingredients.each do |ingredient|
          unless ingredients.include?(ingredient.id.to_s)
            match = false
            break
          end
        end

        recipes << recipe if match
      end

      render json: recipes
    end
  end
end
