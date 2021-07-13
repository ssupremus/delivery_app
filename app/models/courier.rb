# frozen_string_literal: true

class Courier < ApplicationRecord
  has_many :packages, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
