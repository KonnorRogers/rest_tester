# frozen_string_literal: true

require 'rest-client'

url = 'localhost:3000'
puts RestClient.get(url)
