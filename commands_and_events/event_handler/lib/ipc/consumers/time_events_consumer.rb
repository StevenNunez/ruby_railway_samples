module Ipc
  module Consumers
    class TimeEventsConsumer < RailwayIpc::Consumer
      listen_to queue: 'event_handler:time:events', exchange: 'ruby_sample:time:events'
      handle RubySample::Events::TimeIssued, with: Ipc::Handlers::TimeIssuedHandler
    end
  end
end
