# frozen_string_literal: true

Rails.application.routes.draw do
  resources :couriers do
    resources :packages, only: :create
  end
  root to: 'couriers#index'
end
