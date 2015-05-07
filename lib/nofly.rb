require 'nofly/event_library'
require 'nofly/foo'
require 'nofly/foo_nofly'

module Nofly

  def self.for(obj, options = {})
    begin
      Nofly.const_get("#{obj.class.to_s}Nofly").new(obj, options)
    rescue
      raise "Cannot nofly that. Have you forgot to create a nofly event library for '#{obj.class.to_s}?'"
    end
  end

end
