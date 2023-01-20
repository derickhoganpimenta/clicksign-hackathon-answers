require_relative "../application_service.rb"
require_relative "../notification.rb"

class Notification::Sms < ApplicationService
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    pp "#{@message} sended by #{self.class_name}"
  end
end