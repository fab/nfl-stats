$(document).ready(function() {
  // set window height
  var windowHeight = $(window).height()
  $('body').height(windowHeight)

  // setup select2
  $('select').select2({ width: '220px' }).on('select2:select', function(e) {
    console.log("New team ID: " + e.params.data.id);
    var filename = 'data/' + e.params.data.id + '.json'

    $.getJSON(filename, function(data) {
      console.log(data.team.name);
      var team_stat_cells = $('.stat')
      for (var i = 0; i < data.team_stats.length; i++) {
        var team_stat = data.team_stats[i];
        var team_stat_cell = $(team_stat_cells[i]);
        team_stat_cell.find('.value').text(team_stat.value);
        team_stat_cell.find('strong').text(team_stat.rank);

        // set rank color code
        var rank_value = parseInt(team_stat.rank);
        var rank_color_code = null;
        if (rank_value <= 5) {
          rank_color_code = 'high';
        } else if ((rank_value <= 27) && (rank_value >= 23)) {
          rank_color_code = 'medium';
        } else if (rank_value >= 28) {
          rank_color_code = 'low';
        }
        team_stat_cell.find('.rank').children().first().removeClass().addClass(rank_color_code);
      }
    });
  });

  $("select").val("ARI").trigger("change")
});
