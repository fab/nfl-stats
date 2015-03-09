App.TeamRoute = Ember.Route.extend

  model: (params) ->
    @store.find 'team', params.id

  setupController: (controller, model) ->
    @_super(controller, model)

    Ember.run.scheduleOnce('afterRender', =>
      @initializeStyles(model)
    )

  initializeStyles: (model) ->
    @setBodyHeight()
    @setupSelect2()
    @styleWithTeamColors(model)

  setBodyHeight: () ->
    windowHeight = jQuery(window).height()
    jQuery("body").height(windowHeight)

  setupSelect2: () ->
    jQuery(".ember-select").select2()
    jQuery(".select2-container").width(220)
    jQuery('.select2-container').css('top', '30%')

  styleWithTeamColors: (model) ->
    jQuery(".stat").css( "background" : model.get('firstBackgroundColor') )
    jQuery(".stat").css( "color" : model.get('fontColor'))
    jQuery(".stat:nth-child(odd)").css( "background" : model.get('secondBackgroundColor'))
