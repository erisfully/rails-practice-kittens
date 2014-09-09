class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def edit
    @kitten = Kitten.find(params[:id])
    @categories = Category.all
  end

  def update
    @kitten = Kitten.find(params[:id])
    @kitten.update(category_id: params[:kitten][:category_id])
    redirect_to root_path
  end
end