App.TeamRoute = Ember.Route.extend

  model: (params) ->
    @store.find 'team', params.id

  setupController: (controller, model) ->
    @_super(controller, model)

    Ember.run.scheduleOnce('afterRender', =>
      @setupSelect2()
      jQuery(".stat").css( "background" : model.get('firstBackgroundColor') )
      jQuery(".stat").css( "color" : model.get('fontColor'))
      jQuery(".stat:nth-child(odd)").css( "background" : model.get('secondBackgroundColor'))
    )

  setupSelect2: () ->
    jQuery(".ember-select").select2()
    jQuery(".select2-container").width(200)
