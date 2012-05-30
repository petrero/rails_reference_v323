class Product < ActiveRecord::Base
  attr_accessible :discontinued, :name, :price, :rating, :released_on, :publisher, :categories
  belongs_to :publisher
  has_many :categorizations
  has_many :categories, through: :categorizations
end
