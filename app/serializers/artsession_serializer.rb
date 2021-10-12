class ArtsessionSerializer < ActiveModel::Serializer
  attributes :id, :artstyle, :price, :sessiontype, :piecespergroup
  belongs_to :customergroup
  has_many :artpieces
end
