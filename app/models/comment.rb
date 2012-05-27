class Comment < ActiveRecord::Base
  belongs_to :article, touch: true
  attr_accessible :content, :name, :article_id, :article
end
