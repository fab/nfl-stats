App.Team = DS.Model.extend
  name: DS.attr('string')
  city: DS.attr('string')
  abbr: DS.attr('string')
  colorScheme: DS.attr()
  teamStats:   DS.hasMany('team_stat')

  displayName: ( ->
    @get('city') + ' ' + @get('name')
  ).property('city', 'name')

  firstBackgroundColor: ( ->
    @get('colorScheme')[0]
  ).property('colorScheme')

  secondBackgroundColor: ( ->
    @get('colorScheme')[1]
  ).property('colorScheme')

  fontColor: ( ->
    @get('colorScheme')[2]
  ).property('colorScheme')
