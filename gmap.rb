require './customer'
require 'rubygems'
require 'httparty'
require 'pry'

class Gmap

  include HTTParty

  def location(cust)
    

    # call goolge with customer parameter
    # return result
    base_url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/"
    if cust == "Sample"
      url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=mongolian%20grill&inputtype=textquery&fields=photos,formatted_address,name,opening_hours,rating&locationbias=circle: 2000@47.6918452,-122.2226413&key=AIzaSyCI33WirMl2FJlzwi5vey0C8T63qnFh4Jg"
      response = HTTParty.get(url)
      return response.code
    else
      #Extract customer info
      url = base_url+cust.output+"?input="+cust.name+"&inputtype="+cust.text_phone+"&fields="+cust.type+"&fields=language="+cust.language+"&locationbias=circle:"+cust.location+"&key="+cust.apikey

      response = HTTParty.get(url)
      return response.code
    end
  end
end

