class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :planner, class_name: 'Planner', foreign_key: 'planner_id'
    belongs_to :client, class_name: 'User', foreign_key: 'client_id'
    belongs_to :event
end
