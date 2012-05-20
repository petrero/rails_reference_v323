class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_at
  
  def to_param
    "#{id} #{name}".parameterize
  end
end
