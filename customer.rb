class Customer
  attr_reader :name, :apikey, :text_phone, :language, :output, :number, :location, :type
  def initialize(output, name, text_phone, type, language, number,location, apikey)
    @output = output
    @name = name
    @text_phone = text_phone
    @type = type
    @language = language
    @number = number
    @location = location
    @apikey = apikey
  end

  def sample 
    return "Sample"
    # return "OK"
  end
end

