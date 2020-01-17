module Rlambda
  class Function
    def initialize(request={})
      @request = Rack::Request.new(request)
    end

    def call
      [code, headers, Array(body)]
    end

    private
    attr_reader :request

    def body
      raise NotImplementedError, 'Body must be defined'
    end

    def code
      200
    end

    def headers
      {'Content-Type' => 'application/json'}
    end
  end
end
