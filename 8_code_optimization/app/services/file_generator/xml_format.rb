require_relative "../application_service.rb"
require_relative "../file_generator.rb"

class FileGenerator::XmlFormat < ApplicationService

  def initialize(**args)
    @content = '
      <?xml version="1.0" encoding="UTF-8"?>
      <breakfast_menu>
        <food>
          <name>Belgian Waffles</name>
          <price>$5.95</price>
          <description>
          Two of our famous Belgian Waffles with plenty of real maple syrup
          </description>
          <calories>650</calories>
        </food>
        <food>
          <name>Strawberry Belgian Waffles</name>
          <price>$7.95</price>
          <description>
          Light Belgian waffles covered with strawberries and whipped cream
          </description>
          <calories>900</calories>
        </food>
        <food>
          <name>Berry-Berry Belgian Waffles</name>
          <price>$8.95</price>
          <description>
          Belgian waffles covered with assorted fresh berries and whipped cream
          </description>
          <calories>900</calories>
        </food>
      </breakfast_menu>
    '
  end

  def call
    File.write('file.xml', @content)
  end
end