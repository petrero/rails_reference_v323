class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_at
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  def should_generate_new_friendly_id?
    new_record?
  end
end
