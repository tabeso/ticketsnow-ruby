module Ticketsnow
  class Event < Ticketsnow::Connection
    
    class << self
      
      def all
        ensure_connection!
        @@current_connection.client.request(:wsdl, :get_event_list, DEFAULT_OPTIONS)
      end
      
    end
    
  end
end