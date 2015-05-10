require 'nofly/event_library'

module Nofly

  def self.for(obj, options = {})
    begin
      Nofly.const_get("#{obj.class.to_s}Nofly").new(obj, options)
    rescue
      raise "Cannot nofly that. Have you forgotten to create a nofly event library for '#{obj.class.to_s}?'"
    end
  end

end
