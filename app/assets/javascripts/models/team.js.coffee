App.Team = DS.Model.extend
  name: DS.attr('string')
  city: DS.attr('string')
  colorScheme: DS.attr()
  # teamStats: DS.hasMany('teamstat')

  displayName: ( ->
    @get('city') + ' ' + @get('name')
  ).property('city', 'name')
