require "perlrss/parser/version"
require "perlrss/module_name"
require "perlrss/event"
require "feedzirra"

module Perlrss
  RSS = 'http://search.cpan.org/uploads.rdf'
  module Parser
    def self.entries
      feed = Feedzirra::Feed.fetch_and_parse(Perlrss::RSS)
      modules = []
      feed.entries.each do |e|
        modules << Perlrss::Entry.new(
            ModuleName.new(e.title),
            e.url,
            e.summary,
            e.published.to_datetime)
      end
      modules
    end
  end
end
