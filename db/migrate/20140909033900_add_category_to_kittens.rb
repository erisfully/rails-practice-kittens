class AddCategoryToKittens < ActiveRecord::Migration
  def change
    add_column :kittens, :category, :string
  end
end
