class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_ingredient, only: [:edit, :update, :destroy]
  layout 'admin/admin'

  def index
    @categories=Category.all
  end
end
