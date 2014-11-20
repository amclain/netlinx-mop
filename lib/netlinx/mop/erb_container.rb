
require 'erb'


module Mop
  class ERBContainer
    
    def initialize **kwargs
      kwargs.each { |k, v| instance_variable_set :"@#{k}", v }
    end
    
    def process string
      ERB.new(string).result(binding)
    end
    
  end
end
