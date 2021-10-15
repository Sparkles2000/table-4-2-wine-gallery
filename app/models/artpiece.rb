class Artpiece < ApplicationRecord
  belongs_to :artsession
  has_many :imageelements, dependent: :destroy
  accepts_nested_attributes_for :imageelements
end