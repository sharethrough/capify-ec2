require 'rubygems'
require 'fog/aws/models/compute/server'

module Fog
  module Compute
    class AWS
      class Server
        def contact_point(use_private_ip = false)
          if use_private_ip
            private_ip_address
          else
            dns_name || public_ip_address || private_ip_address
          end
        end

        def name
          tags["Name"] || id
        end
      end
    end
  end
end
