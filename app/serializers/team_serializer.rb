class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :color_scheme

  has_many :team_stats
end
