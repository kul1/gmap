require './gmap.rb'

RSpec.describe Gmap do
  
  # Check whether gmap can cAonnect
  # Check if sample customer exist

  it 'Customer has sample customer' do
    customer = Customer.new
    expect(customer).to respond_to(:sample)
  end
  
  it 'Has location method' do
    customer = Customer.new
    sample = customer.sample
    gmap = Gmap.new
    locations = gmap.location(sample)
    expect(locations).to eq "OK"
end


end

