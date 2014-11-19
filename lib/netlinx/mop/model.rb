
require 'ostruct'
require 'yaml'


module Mop
  class Model < OpenStruct
    
    def self.load_file file
      to_mop_model YAML.load_file file
    end
    
    private
    
    # This method does not dup nested hashes and will replace them.
    # Designed to be used on hashes returned from the YAML parser,
    # or where there are not yet references to nested items.
    def self.to_mop_model hash
      Mop::Model.new.tap do |os|
        hash.keys.each do |k|
          os[k] = hash[k].is_a?(Hash) ? to_mop_model(hash[k]) : hash[k]
        end
      end
    end
    
  end
end
