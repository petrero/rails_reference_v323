class Product < ActiveRecord::Base
  attr_accessible :publisher_id, :category_ids, :discontinued, :name, :price, :rating, :released_on, :publisher, :categories
  belongs_to :publisher
  has_many :categorizations
  has_many :categories, through: :categorizations
  
  validates_presence_of :name
end
