class Winepurchase < ApplicationRecord
  belongs_to :brandofwine
  belongs_to :customergroup
end
