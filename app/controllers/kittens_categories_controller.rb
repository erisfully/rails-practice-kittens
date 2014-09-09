class KittensCategoriesController < ApplicationController
  def new
    @kittens_categories = KittensCategory.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @kittens_categories = KittensCategory.create(kitten_id: params[:id], category_id: params[:kittens_category][:category_id])
    if @kittens_categories.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  # def kitcat_params
  # params.require(:kittens_category).permit(:category_id, :id)
  # end
end
