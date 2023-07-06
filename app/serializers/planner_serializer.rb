class PlannerSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :email, :name, :image_url, :bio, :company
end
