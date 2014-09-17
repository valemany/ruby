#!/usr/local/bin/ruby -w
require 'yaml'
require 'json'
require_relative 'datahash.rb'

ydata = YAML.load_file('data.yml')  
jdata = JSON.parse IO.read('data.json'), :symbolize_names => true

puts ydata[:admin][:dev][:db_host]
puts jdata[:browse][:username]
puts DATA[:api][:dev][:url]