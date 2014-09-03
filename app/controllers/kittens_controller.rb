class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def edit
    @kitten = Kitten.find(params[:id])

  end

end