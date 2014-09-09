class KittensCategoriesController < ApplicationController
  def new
    @kittens_categories = KittensCategory.new
    @categories = Category.all
  end

  def create
    @kittens_categories = KittensCategory.new
    @categories = Category.all

    if KittensCategory.find_by(kitten_id: params[:id], category_id: params[:kittens_category][:category_id]) != nil
      flash.now[:notice] = "CAtegory has already been added"
      render 'new'
    else
      @kittens_categories = KittensCategory.create(kitten_id: params[:id], category_id: params[:kittens_category][:category_id])
      if @kittens_categories.save
        redirect_to root_path
      else
        flash.now[:notice] = "CATegory cannot be blank"
        render 'new'
      end
    end
  end

end
