class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
