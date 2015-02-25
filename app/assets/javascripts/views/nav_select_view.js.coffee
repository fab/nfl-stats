App.NavSelectView = Ember.Select.extend
  valueDidChange: Ember.observer(( ->
    @_super()
    @get('controller').send('selectTeam', @get('value'))
  ), 'value')
