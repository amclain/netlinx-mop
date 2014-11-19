
module Mop
  class Models
    
    private_class_method :new
    
    @list = []
    
    class << self
      
      def add node
        @list << node unless @list.include? node
        node
      end
      
      alias_method :<<, :add
      
      def remove node
        @list.delete node
      end
      
      def find **kwargs
        select(**kwargs).first
      end
      
      alias_method :[], :find
      
      def select **kwargs
        name = kwargs.fetch :name, nil
        @list.select { |n| n.name == name }
      end
      
      def all
        @list
      end
      
    end
  end
end
