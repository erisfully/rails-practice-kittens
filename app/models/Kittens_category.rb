class KittensCategory < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category
  validates_presence_of :kitten_id, :category_id
end