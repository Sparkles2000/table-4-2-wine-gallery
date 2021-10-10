class WinepurchaseSerializer < ActiveModel::Serializer
  attributes :purchasepackage, :purchased

  belongs_to :customergroup
  belongs_to :brandofwine
end
