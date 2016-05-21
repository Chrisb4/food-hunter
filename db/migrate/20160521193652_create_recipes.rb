class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :directions
      t.string :cooktime
      t.string :description

      t.timestamps null: false
    end
  end
end
