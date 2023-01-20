require_relative "./file_generator/json_format.rb"
require_relative "./file_generator/xml_format.rb"

module FileGenerator
  FORMATS = {
    'JSON' => FileGenerator::JsonFormat,
    'XML' => FileGenerator::XmlFormat
  }.freeze

  def self.for(format)
    raise "#{format} not permitted" unless FORMATS[format]

    FORMATS[format].new
  end
end

puts "Qual arquivo você deseja salvar?"
puts "JSON"
puts "XML"

option = gets

FileGenerator.for(option).call