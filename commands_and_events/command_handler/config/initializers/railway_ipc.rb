require "railway_ipc"
logger = Logger.new("#{Rails.root}/log/railway.log")
Sneakers.logger = logger
Sneakers::Worker.logger = logger
Sneakers.configure(
    amqp: ENV['RAILWAY_RABBITMQ_CONNECTION_URL']
)
logger.level = Logger::DEBUG
RailwayIpc.configure(logger: logger)
