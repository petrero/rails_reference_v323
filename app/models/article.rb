class Article < ActiveRecord::Base
  belongs_to :author
  attr_accessible :content, :name, :published_at
end
