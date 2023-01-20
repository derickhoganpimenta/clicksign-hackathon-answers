require_relative "./notification/whatsapp.rb"
require_relative "./notification/sms.rb"
require_relative "./notification/email.rb"

module Notification
  PROVIDERS = {
    'Whatsapp' => Notification::Whatsapp,
    'Sms' => Notification::Sms,
    'Email' => Notification::Email
  }.freeze

  def self.for(provider, message)
    PROVIDERS[provider].new(message)
  end
end

Notification.for('Whatsapp', 'lorem ipsum dolor sit amet').call
Notification.for('Sms', 'lorem ipsum dolor sit amet').call
Notification.for('Email', 'lorem ipsum dolor sit amet').call
