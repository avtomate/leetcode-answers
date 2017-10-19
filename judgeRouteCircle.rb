# Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.
#
# The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.

# Input: "UD"
# Output: true
#
# Input: "LL"
# Output: false

# param {String} moves
# return {Boolean}
def judge_circle(moves)
    moves.chars.map { |m| 1i**"RULD".index(m) }.sum == 0
end