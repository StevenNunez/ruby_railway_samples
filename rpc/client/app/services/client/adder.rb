module Client
  class ErrorAdapter
    def error_message(error, message)
      p error
      p message
    end
  end
  class Adder < RailwayIpc::Client
    publish_to exchange: "addition:requests"
    handle_response RubySample::Documents::Response
    rpc_error_adapter ErrorAdapter.new
  end
end

