class Ticket < ActiveRecord::Base
  attr_accessible :body, :from, :subject
  
  def self.receive_mail(message)
    ticket_id = message.subject[/^Update (\d+)$/, 1]
    if ticket_id.present?
      Ticket.update(ticket_id, body: message.body.decoded)
    else
      Ticket.create! subject: message.subject, body: message.body.decoded, from: message.from.first
    end
  end
end
