require_relative "./notification/sms.rb"
require_relative "./notification/email.rb"

module Notification
  PROVIDERS = {
    'Sms' => Notification::Sms,
    'Email' => Notification::Email
  }.freeze

  def self.for(message)
    PROVIDERS.each_key do |provider|
      provider.new(message)
    end
  end
end

Notification.for('lorem ipsum dolor sit amet').call
