# frozen_string_literal: true

# Sidekiqの設定
Sidekiq.configure_server do |config|
  config.redis = {
    url: ENV['REDIS_SIDEKIQ_URL'],
    namespace: ENV.fetch('REDIS_SIDEKIQ_NAMESPACE', 'sidekiq')
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: ENV['REDIS_SIDEKIQ_URL'],
    namespace: ENV.fetch('REDIS_SIDEKIQ_NAMESPACE', 'sidekiq')
  }
end
