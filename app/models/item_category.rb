# frozen_string_literal: true

class ItemCategory < ApplicationRecord
  belongs_to :items, dependent: destroy
  
  validates :name, presence: true, length: { maximum: 30 }
  validates :position, presence: true
end