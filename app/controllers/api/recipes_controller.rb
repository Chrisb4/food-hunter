module Api
  class RecipesController < ApplicationController
    def index
      ingredients = params[:ingredients]

      if ingredients
        @recipes = Recipe.joins(:ingredients).where(ingredients: { id: ingredients }).includes(:ingredients)
        else
        @recipes = Recipe.all
      end

      render json: @recipes
    end
  end
end
