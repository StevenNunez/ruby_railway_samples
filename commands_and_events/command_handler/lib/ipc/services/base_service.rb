module Ipc
  module Services
    class BaseService
      def self.execute(message)
        self.new(message).tap do |service|
          service.execute
        end
      end

      attr_reader :user_uuid, :correlation_id, :data, :context, :message_uuid, :errors, :message

      def initialize(message)
        @user_uuid = message.user_uuid
        @correlation_id = message.correlation_id
        @context = message.context.to_h
        @message_uuid = message.uuid
        @message = message
        @errors = ActiveModel::Errors.new(self)
      end

      def success?
        !@errors.any?
      end

      def execute
        raise 'subclass must define #execute'
      end
    end
  end
end
