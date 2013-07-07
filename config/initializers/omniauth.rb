OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :humanapi, ENV['HUMAN_ID'], ENV['HUMAN_SECRET']
end


#load HUMAN_ID and HUMAN_SECRET in .env file and load with "foreman run rails s"