App.Router.reopen
  location: 'auto'
  rootUrl: '/'

App.Router.map ->
  @resource 'teams', path: '/', ->
    @resource 'team', path: '/teams/:id'
