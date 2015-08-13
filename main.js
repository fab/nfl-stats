function setWindowHeight() {
  var windowHeight = $(window).height();
  $('body').height(windowHeight);
}

function setEventListenerOnSelect() {
  $('select').select2({ width: '220px' }).on('change', function(e) {
    var newTeamAbbr = $(this).val(); // eg. STL

    updateURL(newTeamAbbr);
    fetchDataAndUpdateDOM(newTeamAbbr);
  });
}

function updateURL(teamAbbr) {
  window.history.pushState('', 'NFL Team Stats', '/#/' + teamAbbr);
}

function filename(teamAbbr) {
  return 'data/' + teamAbbr + '.json';
}

function teamAbbrInURL() {
  return location.hash.slice(2).toUpperCase();
}

function fetchDataAndUpdateDOM(newTeamAbbr) {
  $.getJSON(filename(newTeamAbbr), function(data) {
    updateAllTeamStatDivs(data)
  });
}

function updateAllTeamStatDivs(data) {
  var teamStatDivs = $('.stat')
  for (var i = 0; i < data.team_stats.length; i++) {
    var teamStat = data.team_stats[i];
    var teamStatDiv = $(teamStatDivs[i]);

    updateTeamStatDiv(teamStat, teamStatDiv);
  }
}

function updateTeamStatDiv(teamStat, teamStatDiv) {
  var statValue = teamStat.value;
  var rankText = teamStat.rank;
  updateValue(statValue, teamStatDiv);
  updateRank(rankText, teamStatDiv);
}

function updateValue(statValue, teamStatDiv) {
  teamStatDiv.find('.value').text(statValue);
}

function updateRank(rankText, teamStatDiv) {
  var rankValue = parseInt(rankText);
  var rankCategory = categoriseRank(rankValue);

  teamStatDiv.find('strong').text(rankText);
  teamStatDiv.find('.rank').children().first().removeClass().addClass(rankCategory);
}

function categoriseRank(rankValue) {
  if (rankValue <= 5) {
    return 'high';
  } else if ((rankValue <= 27) && (rankValue >= 23)) {
    return 'medium';
  } else if (rankValue >= 28) {
    return 'low';
  } else {
    return ''
  }
}

function triggerSelectChange(teamAbbr) {
  $("select").val(teamAbbr).trigger("change");
}

function loadStatsForTeamInURL() {
  var teamAbbr = teamAbbrInURL() || 'ARI';
  triggerSelectChange(teamAbbr);
}

function locationHashChanged() {
  var newTeamAbbr = teamAbbrInURL() || 'ARI'; // default to ARI if no abbr

  // check if there is team data for that abbr, if not then default to ARI
  $.ajax({
    url: filename(newTeamAbbr),
    success: function() { triggerSelectChange(newTeamAbbr); },
    error: function() { triggerSelectChange('ARI'); }
  });
}

$(document).ready(function() {
  setWindowHeight();
  setEventListenerOnSelect();
  loadStatsForTeamInURL();

  // if the user changes the URL then we update the stats for the desired team
  window.onhashchange = locationHashChanged;
});
