class Ticket < ActiveRecord::Base
  attr_accessible :body, :from, :subject
end
