class Brandofwine < ApplicationRecord
    has_many :imageelements, dependent: :destroy
    has_many :winepurchases
    has_many :customergroups
    has_many :customergroups, through: :winepurchases
    accepts_nested_attributes_for :imageelements
end