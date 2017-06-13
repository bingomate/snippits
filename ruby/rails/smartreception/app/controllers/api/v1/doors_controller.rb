require 'uri'
require 'net/http'

module Api

  module V1

    class DoorsController < BaseController

       def unlock_door()

        url = URI("http://keycard.homesmartfranchise.com/HardwareControlSmart/HardwareSmartService.svc")

        http = Net::HTTP.new(url.host, url.port)

        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'text/xml'
        request["soapaction"] = 'http://tempuri.org/IHardwareSmartService/UnlockDoor'
        request.body = "<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\">\n\t<s:Body>\n\t\t<UnlockDoor xmlns=\"http://tempuri.org/\">\n\t\t\t<HID>#{params[:door_id]}</HID>\n\t\t</UnlockDoor>\n\t</s:Body>\n</s:Envelope>"

        response = http.request(request)
        puts response.read_body

      end

      def lock_door()

       url = URI("http://keycard.homesmartfranchise.com/HardwareControlSmart/HardwareSmartService.svc")

       http = Net::HTTP.new(url.host, url.port)

       request = Net::HTTP::Post.new(url)
       request["content-type"] = 'text/xml'
       request["soapaction"] = 'http://tempuri.org/IHardwareSmartService/LockDoor'
       request.body = "<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\">\n\t<s:Body>\n\t\t<LockDoor xmlns=\"http://tempuri.org/\">\n\t\t\t<HID>#{params[:door_id]}</HID>\n\t\t</LockDoor>\n\t</s:Body>\n</s:Envelope>"

       response = http.request(request)
       puts response.read_body

    end

  end

end

end
