  class Admin::RecipesController < AdminController
    before_action :authenticate_admin!
    before_action :set_recipe, only: [:edit, :update, :destroy]
    layout 'admin/admin'

    def index
      @recipes=Recipe.all
    end

    def show
    end

    def new
      @recipe = Recipe.new
    end

    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to admin_recipes_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @recipe.update_attributes(recipe_params)
        redirect_to admin_recipes_path
      else
        render :edit
      end
    end

    def destroy
      @recipe.destroy
      redirect_to admin_recipes_path
    end

  private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :directions, :minutes, :description, ingredient_ids: [])
    end

  end

