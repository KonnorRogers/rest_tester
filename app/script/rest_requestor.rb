# frozen_string_literal: true

require 'rest-client'

URL = 'localhost:3000/users/'
INPUTS = {
  get: {
    show: '/1',
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

  post: {
    create: ''
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
    return input if hash.key?(input)
  end

  nil
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

def payload
  { param1: 'param1', param2: 'param2' }
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

    puts RestClient.send(@method, url) if @method == :get
    puts RestClient.send(@method, url, payload) if @method != :get

    puts @method
    puts url
  end
end

cli_loop
