class Category < ActiveRecord::Base

  # has_and_belongs_to_many :kittens
  has_many :kittens_categories
  has_many :kittens, :through => :kittens_categories

  validates :name, presence: true, uniqueness: {case_sensitive: false}

end