# frozen_string_literal: true

Rails.application.routes.draw do
  resources :couriers
  root to: 'couriers#index'
end
