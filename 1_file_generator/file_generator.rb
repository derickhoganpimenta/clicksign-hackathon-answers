class FileGenerator
  def generate(format)
    "#{format} file"
  end
end

class CustomFile
  def generateFile(format)
    fileGenerator = FileGenerator.new
    fileGenerator.generate(format)
  end
end

custom_file = CustomFile.new
p custom_file.generateFile(:json)
p custom_file.generateFile(:pdf)
p custom_file.generateFile(:xml)
p custom_file.generateFile(:otherformat)