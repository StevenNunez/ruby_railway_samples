module Ipc
  module Consumers
    class TimeCommandsConsumer < RailwayIpc::Consumer
      listen_to queue: 'command_handler:time:commands', exchange: 'ruby_sample:time:commands'
      handle RubySample::Commands::IssueTime, with: Ipc::Handlers::IssueTimeHandler
    end
  end
end
