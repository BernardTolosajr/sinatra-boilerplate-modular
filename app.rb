ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'
require './helpers/foo.rb'

Bundler.require :default, ENV['RACK_ENV'].to_sym

module SimpleApp
  class App < Sinatra::Base
    helpers Sinatra::Foo::Helpers

    get '/' do
      hello("world")
    end

  end
end
