class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_at
  
  extend FriendlyId
  friendly_id :name
end
