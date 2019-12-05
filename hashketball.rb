def game_hash
  
  ### HOME TEAM PLAYERS ###
  anderson = { player_name: "Alan Anderson",
    number: "0",
    shoe: 16,
    points: 22,
    rebounds: 12,
    assists: 12,
    steals: 3,
    blocks: 1,
    slam_dunks: 1
    }
  evans = { player_name: "Reggie Evans",
    number: "30",
    shoe: 14,
    points: 12,
    rebounds: 12,
    assists: 12,
    steals: 12,
    blocks: 12,
    slam_dunks:7 
    }
  lopez = { player_name: "Brook Lopez",
    number: "11",
    shoe: 17,
    points: 17,
    rebounds: 19,
    assists: 10,
    steals: 3,
    blocks: 1,
    slam_dunks: 15
    }
  plumlee = { player_name: "Mason Plumlee",
    number: "1",
    shoe: 19,
    points: 26,
    rebounds: 11,
    assists: 6,
    steals: 3,
    blocks: 8,
    slam_dunks: 5
    }
  terry = { player_name: "Jason Terry",
    number: "31",
    shoe: 15,
    points: 19,
    rebounds: 2,
    assists: 2,
    steals: 4,
    blocks: 11,
    slam_dunks: 1
    }
  
  
  ### AWAY TEAM PLAYERS ###
  adrien = { player_name: "Jeff Adrien",
    number: "4",
    shoe: 18,
    points: 10,
    rebounds: 1,
    assists: 1,
    steals: 2,
    blocks: 7,
    slam_dunks: 2
    }
  biyombo = { player_name: "Bismack Biyombo",
    number: "0",
    shoe: 16,
    points: 12,
    rebounds: 4,
    assists: 7,
    steals: 22,
    blocks: 15,
    slam_dunks: 10
    }
  diop = { player_name: "DeSagna Diop",
    number: "2",
    shoe: 14,
    points: 24,
    rebounds: 12,
    assists: 12,
    steals: 4,
    blocks: 5,
    slam_dunks: 5
    }
  gordon = { player_name: "Ben Gordon",
    number: "8",
    shoe: 15,
    points: 33,
    rebounds: 3,
    assists: 2,
    steals: 1,
    blocks: 1,
    slam_dunks: 0
    }
  walker = { player_name: "Kemba Walker",
    number: "33",
    shoe: 15,
    points: 6,
    rebounds: 12,
    assists: 12,
    steals: 7,
    blocks: 5,
    slam_dunks: 12
    }
  
  
  
  ### GAME HASH ###
  
  {
  home: {
    team_name: "Brooklyn Nets",
    colors: ["Black","White"],
    players: [anderson,evans,lopez,plumlee,terry]
    },
  away: {
    team_name: "Charlotte Hornets",
    colors: ["Turquoise","Purple"],
    players: [adrien,biyombo,diop,gordon,walker]
    }
  }
  
end

def get_player_and_stat(first_stat,second_stat)
  # returns hash of player_name => data_value
  # to return hash of data_value => player_name, enter 'data' for second arg
  
  game_info = game_hash
  info = game_info.map do |team|
    team[1][first_stat].map do |player|
      [player[first_stat], player[second_stat]]
    end
  end
  player_and_stats = []
  info.each {|info_by_team| info_by_team.each {|info_by_player| player_and_stats.push(info_by_player) }}
  p player_and_stats.to_h
end

def num_points_scored(player)
  # knows the number of points scored by each player
  
  all_points_scored = get_player_and_stat(:points)
  all_points_scored[player]

end


def shoe_size
  # knows the shoe size of each player
end  


def team_colors(team)
  # knows the Brooklyn Nets colors are Black and White
  game_info = game_hash
  teams_and_colors = game_info.map do |team|
    [team[1][:team_name], team[1][:colors]]  
  end
  teams_and_colors.to_h[team]
end

def team_names
  game_info = game_hash
  teams = game_info.map {|team| team[1][:team_name]}
  p teams
end  

def player_numbers
  get_player_and_stat
end  
  
def player_stats
  # returns all stats for a given player
end

def big_shoe_rebounds
  # returns the number of rebounds of the player with the biggest shoe size
end

get_player_and_stat(:player_name,:number)