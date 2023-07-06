class Venue < ApplicationRecord
    has_many :events
    has_many :planners, through: :events
    has_many :clients, through: :events
end
