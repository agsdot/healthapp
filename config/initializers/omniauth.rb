OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :humanapi, ENV['HUMAN_ID'], ENV['HUMAN_SECRET']
end