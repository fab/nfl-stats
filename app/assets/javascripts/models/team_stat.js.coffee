App.TeamStat = DS.Model.extend
  title: DS.attr('string')
  role:  DS.attr('string')
  value: DS.attr('number')
  rank:  DS.attr('string')
  team:  DS.belongsTo('team')

  highOrLow: ( ->
    rank_value = parseInt(@get('rank'))
    if rank_value <= 5 then return 'high'
    if rank_value <= 27 and rank_value >= 23 then return 'medium'
    if rank_value >= 28 then return 'low'
  ).property('rank')
