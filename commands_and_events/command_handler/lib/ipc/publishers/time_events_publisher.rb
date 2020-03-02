module Ipc
  module Publishers
    class TimeEventsPublisher < RailwayIpc::Publisher
      exchange 'ruby_sample:time:events'

      def self.issue_time(user_uuid:, correlation_id:, context:)
        data = RubySample::Events::TimeIssued::Data.new(unix_epoch_time: Time.now.to_i)
        self.instance.publish(RubySample::Events::TimeIssued.new(
                                uuid: SecureRandom.uuid,
                                user_uuid: user_uuid,
                                correlation_id: correlation_id,
                                context: context,
                                data: data
                              ))
      end
    end
  end
end
