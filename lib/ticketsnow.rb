require 'ticketsnow/version'
require 'ticketsnow/exceptions'
require 'ticketsnow/base'
require 'ticketsnow/connection'

module Ticketsnow
  
  class << self
    attr_accessor :test_mode, :api_key
    
    def configure
      yield self
      self.test_mode ||= false
      Base.token = api_key
      Base.endpoint = "http://services.#{ test_mode ? 'preview.' : '' }eventinventory.com/webservices/ticketsearch.asmx?wsdl"
    end
    
  end
  
end