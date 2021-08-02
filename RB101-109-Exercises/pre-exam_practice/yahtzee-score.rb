## https://edabit.com/challenge/buLixiCkP2xwkfAqw

#
# In a Yahtzee game, the player has to score points rolling five dice trying to obtain a specific combination in every of the thirteen arr of the game.

# Turn	Name	Points
# 1	Aces	Sum of all dice showing 1
# 2	Twos	Sum of all dice showing 2
# 3	Threes	Sum of all dice showing 3
# 4	Fours	Sum of all dice showing 4
# 5	Fives	Sum of all dice showing 5
# 6	Sixes	Sum of all dice showing 6
# 7	Three of a Kind	Sum of all dice if there are at least three dice the same
# 8	Four of a Kind	Sum of all dice if there are at least four dice the same
# 9	Full House	25 points if there are two dice of a number and three dice of another number
# 10	Lower Straight	30 points if there is a sequence of at least four dice (1,2,3,4 or 2,3,4,5 or 3,4,5,6)
# 11	Higher Straight	40 points if there is a sequence of five dice (1,2,3,4,5 or 2,3,4,5,6)
# 12	Yahtzee	50 points if there are five dice the same
# 13	Chance	Sum of all dice
# If during a turn the rolled dice don't give a valid combination, the score for that turn will be equal to 0. If the total points scored during the first six arr are equal or greater than 63, an additional 35 points are added to the final score.

# You are given an array arr that contains 13 arrays; each array is representing a set of five dice to check for the turn combination, accordingly to the order and to the description given in the above table. You have to implement a function that rearr an integer being the final score made by the player.

def sum(arr)
  arr.inject(:+)
end

def tally(arr)
  counts = Hash.new(0)
  arr.each { |element| counts[element] += 1 }
  counts
end

def score_all_dice(turn)
  sum(turn)
end

def score_number_dice(turn, expected_num)
  expected_num * tally(turn)[expected_num]
end

def score_n_of_a_kind(turn, n_required)
  counts = tally(turn.sort)
  counts.values.max < n_required ? 0 : score_all_dice(turn)
end

def score_3_of_a_kind(turn)
  score_n_of_a_kind(turn, 3)
end

def score_4_of_a_kind(turn)
  score_n_of_a_kind(turn, 4)
end

def score_full_house(turn)
  counts = tally(turn)
  if counts.values.include?(3) && counts.values.include?(2)
    return 25
  else
    return 0  
  end
end

def score_lower_straight(turn)
  turn.sort!
  0.upto(1) do |start_pos|
    return 30 if turn.slice(0, 4) == (turn[0].upto(turn[0] + 3)).to_a
  end

  return 0
end

def score_higher_straight(turn)
  turn.sort!
  return 40 if turn == (turn[0].upto(turn[0] + 4)).to_a
  return 0
end

def score_yahtzee(turn)
  tally(turn).values.max == 5 ? 50 : 0
end

def score_chance(turn)
  score_all_dice(turn)
end

def yahtzee_score_calc(arr)
  scores = []
  arr.each_with_index do |turn, turn_num|
    case (turn_num+1)
    when 1..6
      scores [turn_num] = score_number_dice(turn, turn_num+1)

    when 7
      scores [turn_num] = score_3_of_a_kind(turn)

    when 8
      scores [turn_num] = score_4_of_a_kind(turn)

    when 9
      scores [turn_num] = score_full_house(turn)

    when 10
      scores [turn_num] = score_lower_straight(turn)

    when 11
      scores [turn_num] = score_higher_straight(turn)

    when 12
      scores [turn_num] = score_yahtzee(turn)

    when 13
      scores [turn_num] = score_chance(turn)
    end
  end
  
  score = sum(scores)
  if sum(scores.slice(0, 6)) >= 63
    score += 35
  end

  score
end


# Example
p yahtzee_score_calc([
  [1, 3, 1, 1, 2], # Aces
  [1, 2, 4, 5, 6], # Twos
  [6, 3, 4, 3, 4], # Threes
  [3, 1, 1, 4, 4], # Fours
  [5, 5, 5, 5, 3], # Fives
  [6, 2, 6, 6, 6], # Sixes
  [1, 4, 4, 2, 1], # Three of a Kind
  [3, 3, 3, 3, 3], # Four of a Kind
  [2, 2, 1, 1, 2], # Full House
  [6, 1, 2, 3, 4], # Lower Straight
  [2, 3, 5, 4, 1], # Higher Straight
  [4, 4, 4, 4, 4], # Yahtzee
  [3, 3, 4, 5, 6], # Chance
]) == 279

# # Turn 1 ➞ There are 3 dice showing "1" ➞ 3 pts.
# # Turn 2 ➞ There is 1 die showing "2" ➞ 2 pts.
# # Turn 3 ➞ There are 2 dice showing "3" ➞ 6 pts.
# # Turn 4 ➞ There are 2 dice showing "4" ➞ 8 pts.
# # Turn 5 ➞ There are 4 dice showing "5" ➞ 20 pts.
# # Turn 6 ➞ There are 4 dice showing "6" ➞ 24 pts.
# # Turn 7 ➞ There aren't at least 3 dice the same ➞ 0 pts.
# # Turn 8 ➞ There are 4 dice the same ➞ 15 pts. (sum of all dice)
# # Turn 9 ➞ There is a Full House (two "1" and three "2") ➞ 25 pts.
# # Turn 10 ➞ There is a Lower Straight (1,2,3,4) ➞ 30 pts.
# # Turn 11 ➞ There is a Higher Straight (1,2,3,4,5) ➞ 40 pts.
# # Turn 12 ➞ Yahtzee!!! There are 5 dice the same ➞ 50 pts.
# # Turn 13 ➞ Sum of all dice ➞ 21 pts.

# # The sum of the points made in the first six arr is:
# # 3 + 2 + 6 + 8 + 20 + 24 = 63
# # There is a bonus of 35 points
# # The sum of the points made in the other seven arr is:
# # 0 + 15 + 25 + 30 + 40 + 50 + 21 = 181

# # The total is equal to:
# # 63 + 35 + 181 = 279

# Notes
# When playing to obtain a Three of a Kind, you have to search for at least three dice the same, and not exactly three. The same rule is applied to the Four of a Kind combination and to the Lower Straight combination (that is valid also if is obtained through a Higher Straight).
# A Full House is valid if it's obtained with a combination of two different values: five dice the same are not a Full House.
# Obviously, this is a version of Yahtzee adapted for this specific challenge: you can find the official rules (and a clearer table) in the Resources tab.

