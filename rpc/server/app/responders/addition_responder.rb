class AdditionResonder < RailwayIpc::Responder
  respond do |request|
    p request
    num1 = request.data.num1
    num2 = request.data.num2
    RubySample::Documents::Response.new(result: num1 + num2)
  end
end
