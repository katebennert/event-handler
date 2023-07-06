class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :max_capacity, :cost
end
