class Action::Tipo3 < ApplicationService
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def call
    puts "Executa ação #{@type}"
  end
end