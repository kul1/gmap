# Create Utility ruby program to return array of locations from required input parameters: latitude, longitude, number of location, type, response output and language.

## Thing to be considered
- authorize customers able to connect
- connected customer can output array
- output array as expected type

## MVC
### Models
- Customer Model
  - with proper parameter

### Views
- array of requested type
### Controller
- input from customer 
- call google api
- return array of requested type

## Usage
- ruby version 2.5.5
- ryby map.rb [arguments]
- Enter command follow this sample or type ruby map.rb for help

~~~
$ ruby map.rb "xml" "AIzaSyCI33WirMl2FJlzwi5vey0C8T63qnFh4Jg" "all" "French" "json" "Bank"
~~~

## Test Code
TDD to create each step, some code may not related to the final version
Using: Guard, Rspec

To run all test

~~~
$ rspec
~~~

##
Things ToDo 
- Change input ARGV to key=>value when call map.rb
- Or read data from file
- 0r Create Prompt for user input

## Bug or Problem might happen or unable to display result

### API Key was expired or over daily limit or my APIKey not work 
So this program work from logic only and use reponse code 200 and text response to test 

How to solve the problem:
- Once we have proper API_Key, we can easily fix by moving around the parameters as need

### Some parameters not able to find document in this limited time frame
- number of locations as @number 
- name or content of the location @name

### map.rb
- map.rb created after finished TDD 
- map.rb was not in the rspec, it was refactoring to deliver the project

