module Ipc
  module Handlers
    class TimeIssuedHandler < RailwayIpc::Handler
      handle do |message|
        Ipc::Services::TimeIssuedService.execute(message)
      end
    end
  end
end
