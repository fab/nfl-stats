$(document).ready(function() {
  // set window height
  var windowHeight = $(window).height()
  $('body').height(windowHeight)

  // make the dropdown a select element and update stats if team is changed
  $('select').select2({ width: '220px' }).on('change', function(e) {
    var new_team_id = $(this).val()
    var filename = 'data/' + new_team_id + '.json'

    // update url
    window.history.pushState('', 'NFL Team Stats', '/#/' + new_team_id)

    $.getJSON(filename, function(data) {
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

  // on initial request load stats for team name in URL
  var team_name_in_url = location.hash.slice(2).toUpperCase() || 'ARI';
  $("select").val(team_name_in_url).trigger("change");

  // if the user changes the URL then we update the stats for the desired team
  window.onhashchange = locationHashChanged;

  function locationHashChanged() {
    var team_name_in_url = location.hash.slice(2).toUpperCase() || 'ARI';
    var filename = 'data/' + team_name_in_url + '.json'

    // check if there is a team for that name
    $.ajax({
      url: filename,
      success: function() { $("select").val(team_name_in_url).trigger("change"); },
      error: function() { $("select").val('ARI').trigger("change"); }
    });
  }
});
