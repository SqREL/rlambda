module Rlambda
  module Response
    def call(request)
      klass = request['REQUEST_PATH']
                .split('/')
                .delete_if { |x| x.nil? || x.empty? }
                .map(&:capitalize)
                .join('::')

      functions_scope.const_get(klass).new(request).()
    rescue NameError
      not_found_error
    end

    def functions_scope
      raise NotImplementedError
    end

    def not_found_error
      Rlambda::Functions::Errors::NotFound.new.()
    end
  end
end
