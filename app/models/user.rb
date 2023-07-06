class User < ApplicationRecord
    has_many :events
    has_many :venues, through: :events
    has_many :planners, through: :events
    has_many :clients, through: :events
    has_many :comments

    has_secure_password
end
