require "rlambda/version"

module Rlambda
  class Error < StandardError; end

  autoload :Function, 'rlambda/function'
  autoload :Response, 'rlambda/response'

  module Functions
    module Errors
      autoload :NotFound, 'rlambda/functions/errors/not_found'
    end
  end
end
