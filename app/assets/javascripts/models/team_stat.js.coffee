App.TeamStat = DS.Model.extend
  title: DS.attr('string')
  role:  DS.attr('string')
  value: DS.attr('number')
  rank:  DS.attr('string')
  team:  DS.belongsTo('team')
