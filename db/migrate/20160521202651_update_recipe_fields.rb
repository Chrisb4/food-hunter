class UpdateRecipeFields < ActiveRecord::Migration
  def change
    rename_column :recipes, :cooktime, :minutes
    change_column :recipes, :minutes, 'integer USING CAST(minutes AS integer)'
    change_column :recipes, :directions, :text
    change_column :recipes, :description, :text
  end
end
