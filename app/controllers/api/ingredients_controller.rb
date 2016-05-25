module Api
  class IngredientsController < ApplicationController
    def index
      render json: Category.all, :include => :ingredients
    end
  end
end
