require_relative "../application_service.rb"
require_relative "../file_generator.rb"

class FileGenerator::JsonFormat < ApplicationService

  def initialize(**args)
    @content = '
      {
        "breakfast_menu": {
          "food": [
            {
              "name": "Belgian Waffles",
              "price": "$5.95",
              "description": "Two of our famous Belgian Waffles with plenty of real maple syrup",
              "calories": 650
            },
            {
              "name": "Strawberry Belgian Waffles",
              "price": "$7.95",
              "description": "Light Belgian waffles covered with strawberries and whipped cream",
              "calories": 900
            },
            {
              "name": "Berry-Berry Belgian Waffles",
              "price": "$8.95",
              "description": "Belgian waffles covered with assorted fresh berries and whipped cream",
              "calories": 900
            }
          ]
        }
      }
    '
  end

  def call
    File.write('file.csv', @content)
  end
end