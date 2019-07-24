# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, :content, :rating, presence: true
  validates :rating, inclusion: 0..5
  validates :rating, numericality: { only_integer: true }
end
