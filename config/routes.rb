# frozen_string_literal: true

Rails.application.routes.draw do
  root 'top#index'
  match '*path' => 'application#routing_error', via: :all

  if Rails.env.development?
    # Sidekiqの管理画面
    require 'sidekiq/web'
    mount Sidekiq::Web, at: '/sidekiq'
  end
end
