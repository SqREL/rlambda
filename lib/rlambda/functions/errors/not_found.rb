module Rlambda
  module Functions
    module Errors
      class NotFound < Rlambda::Function
        private

        def body
          {status: 'Not Found'}.to_json
        end

        def code
          404
        end
      end
    end
  end
end
