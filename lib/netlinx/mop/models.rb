
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
        list = @list
        
        kwargs.each do |k, v|
          list = list.select { |node| node[k] == v }
        end
        
        list
      end
      
      def all
        @list
      end
      
    end
  end
end
