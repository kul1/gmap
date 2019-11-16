require './customer.rb'
RSpec.describe Customer do

    it 'creates a customer class ' do
      customer = Customer.new
      expect(customer).to be_kind_of(Customer)
    end
    
    #check whether customer class respond to gmap method.

  

end
