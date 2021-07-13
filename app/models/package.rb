# frozen_string_literal: true

class Package < ApplicationRecord
  belongs_to :courier
  validates :tracking_number, presence: true, uniqueness: true
  validates :delivery_status, inclusion: [true, false]
  before_validation :generate_tracking_number

  private

  def generate_tracking_number
    self.tracking_number = loop do
      random_number = SecureRandom.random_number(1_000_000_000).to_s.rjust(10, '0')
      break random_number unless Package.exists?(tracking_number: random_number)
    end
  end
end
