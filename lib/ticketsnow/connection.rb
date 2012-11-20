module Ticketsnow
  
  class Connection < Ticketsnow::Base
    
    def self.ensure_connection!
      new unless @@current_connection
    end
    
    def initialize
      raise ConnectionError, "You must Configure Ticketsnow first." if Base.endpoint.nil?
      @url = Base.endpoint
      @client = Savon.client(@url)
      @@current_connection = @client if @client.wsdl.document?
    end
    
    def client
      @client
    end
    
  end
  
end