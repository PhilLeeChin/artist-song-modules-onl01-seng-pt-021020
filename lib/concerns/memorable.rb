module Memorable
  module ClassMethods
    def self.reset_all
      self.all.clear
    end

    def self.count
      all.count
    end
  end

  module InstanceMethods
    def initialize
      class.all << self
    end
  end
end
