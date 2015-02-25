class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :color_scheme

  embed :ids, include: true
  has_many :team_stats
end
