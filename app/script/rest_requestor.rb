# frozen_string_literal: true

require 'rest-client'

URL = 'localhost:3000/users/'
INPUTS = {
  get: {
    show: 'show/5',
    edit: '5/edit',
    new: 'new',
    index: ''
  },

  patch: {
    patch_update: '15'
  },

  put: {
    put_update: '20'
  },

  delete: {
    destroy: '25'
  }
}.freeze

def greeting
  puts 'Valid requests are:'

  p INPUTS.map { |_key, value| value.keys }.flatten
  puts 'type exit to exit the loop'
  puts 'Enter your request'
end

def cli_input
  input = gets.chomp.to_sym

  return nil if input.nil?
  return :exit if input == :exit

  INPUTS.each do |_key, hash|
    return nil unless hash.key?(input)
  end
  input
end

def method_url_logic(input:)
  INPUTS.each do |method, hash|
    next unless hash.key?(input)

    @method = method if hash.key?(input)

    hash.each do |key, value|
      next unless key == input

      @url_ext = value if key == input
    end
  end
end

def cli_loop
  loop do
    greeting
    input = cli_input

    p input

    exit if input == :exit
    next if input.nil?

    method_url_logic(input: input)

    url = URL + @url_ext

    puts RestClient.send(@method, url)
    puts @method
    puts url
  end
end

cli_loop
