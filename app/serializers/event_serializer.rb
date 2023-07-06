class EventSerializer < ActiveModel::Serializer
  attributes :id, :budget, :date, :type
end
