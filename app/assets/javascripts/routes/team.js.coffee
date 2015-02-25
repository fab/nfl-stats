App.TeamRoute = Ember.Route.extend

  model: (params) ->
    @store.find 'team', params.id
