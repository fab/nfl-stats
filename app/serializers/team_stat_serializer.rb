class TeamStatSerializer < ActiveModel::Serializer
  attributes :title, :role, :value, :rank

  def title
    object.stat.title
  end

  def role
    object.stat.role
  end
end
