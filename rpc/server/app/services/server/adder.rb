module Server
  class Adder < RailwayIpc::Server
    respond_to RubySample::Requests::Add, with: AdditionResonder
  end
end
