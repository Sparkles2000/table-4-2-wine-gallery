class Imageelement < ApplicationRecord
  belongs_to :brandofwine
  belongs_to :artpiece
  has_one_attached :img_scr
end
