class Category < ActiveRecord::Base

  has_many :kittens_categories
  has_many :kittens, :through => :kittens_categories

  validates :name, presence: true, uniqueness: {case_sensitive: false}

end