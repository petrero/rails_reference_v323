class Article < ActiveRecord::Base
  attr_accessible :author_name, :content, :name, :published_at
end
