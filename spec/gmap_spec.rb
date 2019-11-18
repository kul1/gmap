require './gmap.rb'

RSpec.describe Gmap do
  
  it 'Google API Work with test data' do
    customer = Customer.new "A", "AIzaSyCI33WirMl2FJlzwi5vey0C8T63qnFh4Jg", "textquery", "atm", "English", "xml", "200", "30.4284750,-97.7550500"
    sample = customer.sample
    gmap = Gmap.new
    locations = gmap.location(sample)
    expect(locations).to eq 200
  end

  # 'Test with parameters'
  it 'Google API Work with provided parameters' do
    customer = Customer.new "xml", "A", "textquery", "atm", "English",  "200", "30.4284750,-97.7550500", "AIzaSyCI33WirMl2FJlzwi5vey0C8T63qnFh4Jg"
    gmap = Gmap.new
    locations = gmap.location(customer)
    code = locations.code
    expect(code).to eq 200 
  end
end

