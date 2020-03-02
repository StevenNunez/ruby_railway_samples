module Ipc
  module Handlers
    class IssueTimeHandler < RailwayIpc::Handler
      handle do |message|
        Ipc::Services::IssueTimeService.execute(message)
      end
    end
  end
end
