# Input: x = 1, y = 4
#
# Output: 2
#
# Explanation:
# 1   (0 0 0 1)
# 4   (0 1 0 0)
#        ↑   ↑
#
# The above arrows point to positions where the corresponding bits are different.

# param {Integer} x
# param {Integer} y
# return {Integer}
def hamming_distance(x, y)
    (x^y).to_s(2).count("1")
end