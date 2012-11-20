require 'savon'

module Ticketsnow
  class Base
    @@current_connection = nil
    
    DEFAULT_OPTIONS = {:body => {"APPCLIENT_ID" => token}}
    
    class << self
      attr_accessor :token, :endpoint
    end

    
  end
end