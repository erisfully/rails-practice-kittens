class Kitten < ActiveRecord::Base

  # has_and_belongs_to_many :categories
  has_many :kittens_categories
  has_many :categories, :through => :kittens_categories

  validates :image, presence: true


end