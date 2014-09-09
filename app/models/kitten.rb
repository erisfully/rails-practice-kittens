class Kitten < ActiveRecord::Base

  has_many :kittens_categories
  has_many :categories, :through => :kittens_categories

  validates :image, presence: true

end