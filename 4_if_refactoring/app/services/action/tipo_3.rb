require_relative "../application_service.rb"
require_relative '../action.rb'

class Action::Tipo3 < ApplicationService
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def call
    puts "Executa ação #{@type}"
  end
end