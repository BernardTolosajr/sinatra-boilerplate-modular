ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'

#TODO move this somewhere
require './helpers/foo.rb'
require './app/routes/foo.rb'

Bundler.require :default, ENV['RACK_ENV'].to_sym

module SimpleApp
  class App < Sinatra::Base
    helpers Sinatra::Foo::Helpers

    get '/' do
      hello("world")
    end

    use Routes::Foo

  end
end
