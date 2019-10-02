# frozen_string_literal: true

# セッションのストレージにRedisを利用
Rails.application.config.session_store(
  :redis_store,
  servers: {
    host: ENV['REDIS_HOST'],
    port: ENV['REDIS_PORT'],
    db: 0,
    namespace: ENV.fetch('REDIS_SESSION_NAMESPACE', '_session')
  },
  key: "_#{Rails.application.class.parent_name.downcase}_session",
  expire_after: 1.week
)
