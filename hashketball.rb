game_hash = {

	'home': {

		'team_name': "Brooklyn Nets",

    'colors': ["Black", "White"],

    'players': {

      "Alan Anderson": {

	      'number': 0,

	      'shoe': 16,

	      'points': 22,

	      'rebounds': 12,

	      'assists': 12,

	      'steals': 3,

	      'blocks': 1,

	      'slam_dunks': 1

      },

      "Reggie Evans": {

        'number': 30,

        'shoe': 14,

        'points': 12,

        'rebounds': 12,

        'assists': 12,

        'steals': 12,

        'blocks': 12,

        'slam_dunks': 7

      },

      "Brook Lopez": {

        'number': 11,

        'shoe': 17,

        'points': 17,

        'rebounds': 19,

        'assists': 10,

        'steals': 3,

        'blocks': 1,

        'slam_dunks': 15

      },

      "Mason Plumlee": {

        'number': 1,

        'shoe': 19,

        'points': 26,

        'rebounds': 12,

        'assists': 6,

        'steals': 3,

        'blocks': 8,

        'slam_dunks': 5

      },

      "Jason Terry": {

        'number': 31,

        'shoe': 15,

        'points': 19,

        'rebounds': 2,

        'assists': 2,

        'steals': 4,

        'blocks': 11,

        'slam_dunks': 1

      }

    }

  },

  'away': {

    'team_name': "Charlotte Hornets",

    'colors': ["Turquoise", "Purple"],

    'players': {

      "Jeff Adrien": {

        'number': 4,

        'shoe': 18,

        'points': 10,

        'rebounds': 1,

        'assists': 1,

        'steals': 2,

        'blocks': 7,

        'slam_dunks': 2

      },

      "Bismak Biyombo": {

        'number': 0,

        'shoe': 16,

        'points': 12,

        'rebounds': 4,

        'assists': 7,

        'steals': 7,

        'blocks': 15,

        'slam_dunks': 10

      },

      "DeSagna Diop": {

        'number': 2,

        'shoe': 14,

        'points': 24,

        'rebounds': 12,

        'assists': 12,

        'steals': 4,

        'blocks': 5,

        'slam_dunks': 5

      },

      "Ben Gordon": {

        'number': 8,

        'shoe': 15,

        'points': 33,

        'rebounds': 3,

        'assists': 2,

        'steals': 1,

        'blocks': 1,

        'slam_dunks': 0

      },

      "Brendan Haywood": {

        'number': 33,

        'shoe': 15,

        'points': 6,

        'rebounds': 12,

        'assists': 12,

        'steals': 22,

        'blocks': 5,

        'slam_dunks': 12

      }

    }

  }

}



# Given a player's name, returns the number of points they scored.

def num_points_scored(player_name):

  if game_hash['home']['players'].get(player_name):

    return game_hash['home']['players'][player_name]['points']

  else:

    return game_hash['away']['players'][player_name]['points']



# Given a player's name, returns their shoe size.

def shoe_size(player_name):

  if game_hash['home']['players'].get(player_name):

    return game_hash['home']['players'][player_name]['shoe']

  else:

    return game_hash['away']['players'][player_name]['shoe']



# Given a team's name, returns their team colors.

def team_colors(team_name):

  if game_hash['home']['team_name'] == team_name:

    return game_hash['home']['colors']

  else:

    return game_hash['away']['colors']



# Returns the home and away teams' names in an array.

def team_names():

  return [game_hash['home']['team_name'], game_hash['away']['team_name']]



# Given a team name, returns all jersey numbers of players on that team.

def player_numbers(team_name):

  if game_hash['home']['team_name'] == team_name:

    team = 'home'

  else:

    team = 'away'

  team_nums = []

  for player, stats in game_hash[team]['players'].iteritems():

    team_nums.append(stats['number'])

  return team_nums



# Given a player name, returns all their stats as a dictionary.

def player_stats(player_name):

  if game_hash['home']['players'].get(player_name):

    return game_hash['home']['players'][player_name]

  else:

    return game_hash['away']['players'][player_name]



# Returns a dictionary containing the name of the player with the biggest shoe size, his shoe size, and his number of rebounds.

def big_shoe_rebounds():

  max = {'name': '', 'rebounds': 0, 'shoe': 0}



  for player, stats in game_hash['home']['players'].iteritems():

    if stats['shoe'] > max['shoe']:

      max['name'] = player

      max['rebounds'] = stats['rebounds']

      max['shoe'] = stats['shoe']



  for player, stats in game_hash['away']['players'].iteritems():

    if stats['shoe'] > max['shoe']:

      max['name'] = player

      max['rebounds'] = stats['rebounds']

      max['shoe'] = stats['shoe']



  return max



# Returns a dictionary containing the name of the player with the most points and the number of points he scored.

def most_points_scored():

  max = {'name': '', 'points': 0}



  for player, stats in game_hash['home']['players'].iteritems():

    if stats['points'] > max['points']:

      max['name'] = player

      max['points'] = stats['points']



  for player, stats in game_hash['away']['players'].iteritems():

    if stats['points'] > max['points']:

      max['name'] = player

      max['points'] = stats['points']



  return max



# Returns the name of the player with the longest name.

def player_with_longest_name():

  longest_name = ''



  for player in game_hash['home']['players']:

    if len(player) > len(longest_name): longest_name = player 



  for player in game_hash['away']['players']:

    if len(player) > len(longest_name): longest_name = player 



  return longest_name



# Returns the name of the team with the most points.

def winning_team():

  score = {'home': 0, 'away': 0}



  for player, stats in game_hash['home']['players'].iteritems():

    score['home'] += stats['points']



  for player, stats in game_hash['away']['players'].iteritems():

    score['away'] += stats['points']



  return game_hash[max(score, key=score.get)]['team_name']











