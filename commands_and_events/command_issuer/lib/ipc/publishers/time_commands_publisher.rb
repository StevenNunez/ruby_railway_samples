# frozen_string_literal: true

module Ipc
  module Publishers
    class TimeCommandsPublisher < RailwayIpc::Publisher
      exchange 'ruby_sample:time:events'

      def self.issue_time(user_uuid: SecureRandom.uuid, correlation_id: SecureRandom.uuid, context: {})
        instance.publish(RubySample::Commands::IssueTime.new(
                           uuid: SecureRandom.uuid,
                           user_uuid: user_uuid,
                           correlation_id: correlation_id,
                           context: context
                         ))
      end
    end
  end
end
