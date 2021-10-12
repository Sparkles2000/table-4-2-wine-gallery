class ArtpieceSerializer < ActiveModel::Serializer
  attributes :id, :artists, :piece, :artstyle, :img_src

  belongs_to :artsession
end