require './customer'
require './gmap.rb'
require 'rubygems'
require 'httparty'
require 'pry'

input_array = ARGV
unless input_array.length == 6
  puts "Please enter paramter as following format:"
  puts "ruby gmap \"inputformat\" \"apikey\" \"type\" \"language\" \"output-format\" \"Name or Content\""
  puts "For exmaple:"
  puts "ruby gmap.rb \"xml\" \"AIzaSyCI33WirMl2FJlzwi5vey0C8T63qnFh4Jg\" \"all\" \"French\" \"json\" \"Bank\""
  # exit(0)
end

# Assign variable to run program 
# Input from default data and command line ARGV

@xml  = input_array[0]
@apikey = input_array[1]
@type = input_array[2]
@language = input_array[3]
@output = input_array[4]
@name = input_array[5]

@location = "0.4284750,-97.7550500" # Test Location
@text_phone = "textquery" # set as default unless specify as phone number
@number = "200"  # Can not find document
@customer = Customer.new(@output,@name, @text_phone, @type, @language, @number, @location, @apikey)
gmap = Gmap.new
response = gmap.location(@customer)

puts response

