# Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
#
# Example 1:
# Input: [1,4,3,2]
#
# Output: 4
# Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + min(3, 4).
# Note:
# n is a positive integer, which is in the range of [1, 10000].
# All the integers in the array will be in the range of [-10000, 10000].

# param {Integer[]} nums
# return {Integer}
def array_pair_sum(nums)
  minned_container = []
  sorted_nums = nums.sort
  sorted_nums.map.with_index do |n,i|
    next if (i % 2 == 0 || i == 0)
    #could be improved by not instantiating new Arrays every time?
    temp_arr = Array.new().push(sorted_nums[i-1]).push(sorted_nums[i])
    minned_container.push(temp_arr.min)
  end
  minned_container.inject(0){|sum,x| sum + x }
end