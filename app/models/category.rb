class Category < ActiveRecord::Base
  has_many :ingredients, -> { order(:name => :asc) }
end
