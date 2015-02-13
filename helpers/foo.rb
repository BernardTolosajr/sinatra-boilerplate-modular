require 'sinatra/base'

module Sinatra
  module Foo
    module Helpers

      def hello(str)
        "hello #{str}"
      end

    end
  end
end
