App.TeamsRoute = Ember.Route.extend

  model: ->
    @store.find 'team'

  events:
    selectTeam: (teamId) ->
      @transitionTo('team', teamId)
