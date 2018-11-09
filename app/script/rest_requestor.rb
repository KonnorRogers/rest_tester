# frozen_string_literal: true

require 'rest-client'

url = 'localhost:3000/users/'

loop do
  puts 'Enter your request'

  input = gets.chomp
  puts RestClient.get(url + input)
  puts url + input
end
