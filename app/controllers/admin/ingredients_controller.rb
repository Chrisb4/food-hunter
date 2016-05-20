module Admin
  class IngredientsController < ActionController::Base
    before_action :set_ingredient, only: [:edit, :update, :destroy]
    layout 'admin/admin'

    def index
      @ingredients=Ingredient.all
    end

    def show
    end

    def new
      @ingredient = Ingredient.new
    end

    def create
      @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save
        redirect_to admin_ingredients_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @ingredient.update_attributes(ingredient_params)
        redirect_to admin_ingredients_path
      else
        render :edit
      end
    end

    def destroy
      @ingredient.destroy
      redirect_to admin_ingredients_path
    end

private

      def set_ingredient
        @ingredient = Ingredient.find(params[:id])
      end

      def ingredient_params
        params.require(:ingredient).permit(:name)
      end
    end


  end

