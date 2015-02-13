module SimpleApp
  module Routes
    class Foo < Sinatra::Base

      get '/foo' do
        "it works"
      end

    end
  end
end
