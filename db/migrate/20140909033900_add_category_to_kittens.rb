class AddCategoryToKittens < ActiveRecord::Migration
  def change
    add_reference :kittens, :category, index: true
  end
end
