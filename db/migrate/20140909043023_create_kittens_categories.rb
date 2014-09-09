class CreateKittensCategories < ActiveRecord::Migration
  def change
    create_table :kittens_categories do |t|
      t.column :kitten_id, :integer
      t.column :category_id, :integer
    end
  end
end
