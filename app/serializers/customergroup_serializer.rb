class CustomergroupSerializer < ActiveModel::Serializer
  attributes :id, :party, :partyquantity, :customerstatus
  has_many :artsessions
  has_many :artpieces
  has_many :winepurchases
  has_many :brandofwines
end
