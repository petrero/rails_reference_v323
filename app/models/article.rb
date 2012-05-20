class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_at
end
