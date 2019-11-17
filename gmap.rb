require './customer'
require 'rubygems'
require 'httparty'

class Gmap

  include HTTParty

  def location(cust)
    # call goolge with customer parameter
    # return result

    if cust == "Sample"
      url = "https://maps.googleapis.com/maps/api/place/findplacefromtextjson?input=mongolian%20grill&inputtype=textquery&fields=photos,formatted_address,name,opening_hours,rating&locationbias=circle: 2000@47.6918452,-122.2226413&key=AIzaSyCI33WirMl2FJlzwi5vey0C8T63qnFh4Jg"
      response = HTTParty.get(url)
      return response.code
    else

      return "Nil"
    end
  end
end

