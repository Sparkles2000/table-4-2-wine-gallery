class Artsession < ApplicationRecord
  belongs_to :customergroup
  has_many :artpieces, dependent: :destroy
  has_many :imageelements, through: :artpiece
  
  accepts_nested_attributes_for :artpieces
end