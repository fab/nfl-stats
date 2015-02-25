App.TeamRoute = Ember.Route.extend

  model: (params) ->
    @store.find 'team', params.id

  setupController: (controller, model) ->
    @_super(controller, model);

    Ember.run.scheduleOnce('afterRender', ->
      jQuery(".stat").css( "background" : model.get('firstBackgroundColor') )
      jQuery(".stat").css( "color" : model.get('fontColor'))
      jQuery(".stat:nth-child(odd)").css( "background" : model.get('secondBackgroundColor'))
    )
