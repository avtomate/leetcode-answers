# Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
#
# You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
#
# Example 1:
# Input:
# 	Tree 1                     Tree 2
#           1                         2
#          / \                       / \
#         3   2                     1   3
#        /                           \   \
#       5                             4   7
# Output:
# Merged tree:
# 	     3
# 	    / \
# 	   4   5
# 	  / \   \
# 	 5   4   7

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} t1
# param {TreeNode} t2
# return {TreeNode}
def merge_trees(t1, t2)
    result = TreeNode.new(0)
    return t1 if t2.nil?
    return t2 if t1.nil?
    result.val = t1.val + t2.val
    result.left = merge_trees t1.left, t2.left
    result.right = merge_trees t1.right, t2.right
    result
end