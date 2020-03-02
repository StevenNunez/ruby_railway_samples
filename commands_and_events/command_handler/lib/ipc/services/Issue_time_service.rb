module Ipc
  module Services
    class IssueTimeService < Ipc::Services::BaseService
      def execute
        Ipc::Publishers::TimeEventsPublisher.issue_time(
          user_uuid: user_uuid,
          correlation_id: correlation_id,
          context: context)
      end
    end
  end
end
