class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  has_attached_file :photo, styles: { :medium => "200x", :thumb => "100x"}, :default_url => "missing.png"
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
