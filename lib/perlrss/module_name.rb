module Perlrss
  class ModuleName
    attr_reader :dist
    attr_reader :name
    attr_reader :version

    def initialize(dist)
      @dist    = dist
      @version = dist.split('-').last
      @name    = dist.split('-').keep_if { |part| part != @version }.join('::')
    end

    def inspect
      self.name
    end
  end
end