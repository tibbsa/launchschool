## https://edabit.com/challenge/fEzKkzJQgLaDcAJmr
##
#
# Four football teams face each other in a tournament and you must determine the final classification. Depending on the match result, a team gets a certain amount of points:

# A win is worth 3 points.
# A draw is worth 1 point.
# A defeat is worth 0 points.
# Each team faces another once, for a total of six played games. For each game the result is provided with the following notation:

# "Team X - X Team"
# (with X being the number of goals scored by both teams)

# "A 0 - 1 B" ➞ B wins and gets 3 points, A lose and gets 0 points
# "C 2 - 2 D" ➞ It's a draw, both C and D get 1 point
#
# At the end of the tournament, points are counted for each team. If two 
# or more teams have the same number of points, two further criteria are 
# applied to determine who gets the best placement, in the order:
#
# - The greater number of goals scored.
# - The greater goals difference (goals scored minus goals conceded).
#
# Given an array arr containing strings with the results of the six played 
# games, you have to implement a function that returns an array containing 
# four arrays, one for each team, in the following notation:

# [Team, PT, GS, GD]
# Team: A string, name of the team.
# PT: An integer, points obtained.
# GS: An integer, the sum of scored goals.
# GD: An integer, scored goals minus conceded goals (can be negative).
#
# The main array containing the teams' info must be ordered in such a way as 
# to present the correct placement of each team as if it were a summary of 
# the final classification and performance.

# Examples
# tournament_scores(["A 0 - 1 B", "C 2 - 0 D", "B 2 - 2 C", "D 3 - 1 A", "A 2 - 2 C", "B 2 - 0 D"]) ➞ [ [ "B", 7, 5, 3 ], [ "C", 5, 6, 2 ], [ "D", 3, 3, -2 ], [ "A", 1, 3, -3 ] ]
# # Final order is B, C, D, A. All teams have different points, so that a simple descendant sort by points obtained is enough.

# tournament_scores(["A 4 - 0 B", "C 2 - 1 D", "B 1 - 0 C", "D 3 - 2 A", "A 1 - 3 C", "B 2 - 1 D"]) ➞ [ [ "C", 6, 5, 2 ], [ "B", 6, 3, -2 ], [ "A", 3, 7, 1 ], [ "D", 3, 5, -1 ] ]
# # Final order is C, B, A, D (C and B have same points, but C has more scored goals than B; A and D have same points but A has more scored goals than D).

# tournament_scores(["A 2 - 1 B", "C 3 - 0 D", "B 1 - 1 C", "D 1 - 0 A", "A 3 - 0 C", "B 2 - 4 D"]) ➞ [ [ "A", 6, 5, 3 ], [ "D", 6, 5, 0 ], [ "C", 4, 4, 0 ], [ "B", 1, 4, -3 ] ]
# # Final order is A, D, C, B (A and D have same points and same number of scored goals, but A has a greater goals difference than D).
# Notes
# For the exercise scope, every given case is working with the given set of instructions, despite in real life football when teams share points, scored goals and goal difference, other criteria are used to determine the placement (sometimes even a coin toss!).

POINTS_WIN = 3
POINTS_DRAW = 1
POINTS_DEFEAT = 0

def find_or_create_score_entry(scores, team_name)
  if !scores.keys.include?(team_name)
    scores[team_name] = {
      points: 0,
      goals_scored: 0,
      goal_difference: 0
    }  
  end

  scores[team_name]
end

def build_score_table(arr)
  # scores is a hash where each team name points to a score_entry hash containing
  # points, goals_scored, and goal_difference
  scores = Hash.new(nil)

  arr.each do |scorecard|
    team_1, score_1, _, score_2, team_2 = scorecard.split(' ')
    score_1 = score_1.to_i
    score_2 = score_2.to_i
    
    team_1_entry = find_or_create_score_entry(scores, team_1)
    team_2_entry = find_or_create_score_entry(scores, team_2)

    team_1_entry [:goals_scored] += score_1
    team_1_entry [:goal_difference] += (score_1 - score_2)
    
    team_2_entry [:goals_scored] += score_2
    team_2_entry [:goal_difference] += (score_2 - score_1)
    
    case score_1 <=> score_2 
    when -1 # team 2 had higher score than team 1 (i.e. won)
      team_2_entry [:points] += POINTS_WIN

    when 0 # tie/draw
      team_1_entry [:points] += POINTS_DRAW
      team_2_entry [:points] += POINTS_DRAW

    when 1 # team 1 had higher score than team 2 (i.e. won)
      team_1_entry [:points] += POINTS_WIN
    end
  end

  scores
end

def sort_scores!(scoresheet)
  scoresheet.sort! do |a, b|
    sort_result = 0
    
    1.upto(3) do |metric|
      sort_result = -(a[metric] <=> b[metric])
      break if sort_result != 0
    end
    
    sort_result
  end
end

# convert internal representation into final requested output 
def convert_scores_to_array(scoresheet)
  scores = []
  scoresheet.each do |team_name, score_info|
    scores << [
      team_name, 
      score_info[:points], 
      score_info[:goals_scored],
      score_info[:goal_difference]
    ]
  end
  scores  
end

def tournament_scores(arr)
  scoresheet = build_score_table(arr)
  scores = convert_scores_to_array(scoresheet)
  sort_scores!(scores)
  scores
end

p tournament_scores([
  "A 0 - 1 B", 
  "C 2 - 0 D", 
  "B 2 - 2 C", 
  "D 3 - 1 A", 
  "A 2 - 2 C", 
  "B 2 - 0 D"]
) == [ 
  [ "B", 7, 5, 3 ], 
  [ "C", 5, 6, 2 ], 
  [ "D", 3, 3, -2 ], 
  [ "A", 1, 3, -3 ] 
]
# # Final order is B, C, D, A. All teams have different points, so that a simple descendant sort by points obtained is enough.

p tournament_scores([
  "A 4 - 0 B", 
  "C 2 - 1 D", 
  "B 1 - 0 C", 
  "D 3 - 2 A", 
  "A 1 - 3 C", 
  "B 2 - 1 D"]
  ) == [ 
    [ "C", 6, 5, 2 ], 
    [ "B", 6, 3, -2 ], 
    [ "A", 3, 7, 1 ], 
    [ "D", 3, 5, -1 ] 
  ]

# # Final order is C, B, A, D (C and B have same points, but C has more scored goals than B; A and D have same points but A has more scored goals than D).

p tournament_scores([
  "A 2 - 1 B", 
  "C 3 - 0 D", 
  "B 1 - 1 C", 
  "D 1 - 0 A", 
  "A 3 - 0 C", 
  "B 2 - 4 D"
  ]) == [ 
    [ "A", 6, 5, 3 ], 
    [ "D", 6, 5, 0 ], 
    [ "C", 4, 4, 0 ], 
    [ "B", 1, 4, -3 ] 
  ]
  
# # Final order is A, D, C, B (A and D have same points and same number of scored goals, but A has a greater goals difference than D).
