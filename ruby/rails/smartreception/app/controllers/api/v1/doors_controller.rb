module Api

  module V1

    class DoorsController < BaseController

      def unlock_door
        command = [
          curl -X POST \,
          http://keycard.homesmartfranchise.com/HardwareControlSmart/HardwareSmartService.svc \,
          -H 'cache-control: no-cache' \,
          -H 'content-type: text/xml' \,
          -H 'postman-token: 4ab8d0b1-1e67-049c-f869-880dac0084bb' \,
          -H 'soapaction: http://tempuri.org/IHardwareSmartService/UnlockDoor' \,
          -d '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">,
	         <s:Body>,
		         <UnlockDoor xmlns="http://tempuri.org/">,
			          <HID>70</HID>,
		         </UnlockDoor>,
	         </s:Body>,
           </s:Envelope>',
        ].join(',')

        results = `#{command}`
        begin
          # run the curl curlcommand
        rescue => e
          # Do something with the exception
        end
      end

    end

  end

end
