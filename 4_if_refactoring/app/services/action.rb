require_relative './action/tipo_1.rb'
module Action
  ACTIONS = {
    'TIPO1' => Action::Tipo1,
    'TIPO2' => Action::Tipo2,
    'TIPO3' => Action::Tipo3,
    'TIPO4' => Action::Tipo4,
    'TIPO5' => Action::Tipo5,
    'TIPO6' => Action::Tipo6
  }.freeze

  def self.for(type)
    raise "#{type} not permitted" unless ACTIONS[type]

    ACTIONS[type].new
  end
end

7.times do |i|
  Action.for("TIPO#{i}").call
end