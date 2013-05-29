module Perlrss
  class Entry
    attr_reader :url, :summary, :published

    def initialize(mod, url, summary, published)
      @module = mod
      @url    = url
      @summary = summary
      @published =  published
      end

    def name
      @module.name
    end

    def version
      @module.version
    end
  end
end