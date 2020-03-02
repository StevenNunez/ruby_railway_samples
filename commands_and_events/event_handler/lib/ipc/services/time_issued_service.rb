require_relative 'base_service'
module Ipc
  module Services
    class TimeIssuedService < BaseService
      def execute
        p message
        puts "We got the time!"
      end
    end
  end
end
