class WinepurchaseSerializer < ActiveModel::Serializer
  attributes :id, :purchasepackage, :purchased

  belongs_to :customergroup
  belongs_to :brandofwine
end
