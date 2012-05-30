class Categorization < ActiveRecord::Base
  attr_accessible :category
  belongs_to :product
  belongs_to :category
  # attr_accessible :title, :body
end
