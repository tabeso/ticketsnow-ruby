#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'pathname'
$LOAD_PATH.unshift(Pathname.getwd.join('lib').to_s)
require 'ticketsnow-ruby'

def reload!
  Dir["#{Dir.pwd}/lib/**/*.rb"].each { |f| load f }
end