class TeamStatSerializer < ActiveModel::Serializer
  attributes :id, :title, :role, :value, :rank

  def title
    object.stat.title
  end

  def role
    object.stat.role
  end

  def rank
    object.rank.ordinalize
  end
end
