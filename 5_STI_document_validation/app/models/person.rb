require_relative 'person.rb'

class Person < Entity
  DOCUMENT_REGEX = "^\d{3}\x2E\d{3}\x2E\d{3}\x2D\d{2}$"

  validates :document, presence: true, format: {
    with: DOCUMENT_REGEX, message: "Invalid document" }
end
