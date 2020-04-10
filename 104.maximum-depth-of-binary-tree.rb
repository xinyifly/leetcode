#
# @lc app=leetcode id=104 lang=ruby
#
# [104] Maximum Depth of Binary Tree
#
# https://leetcode.com/problems/maximum-depth-of-binary-tree/description/
#
# algorithms
# Easy (63.28%)
# Likes:    2127
# Dislikes: 66
# Total Accepted:    735.6K
# Total Submissions: 1.1M
# Testcase Example:  '[3,9,20,null,null,15,7]'
#
# Given a binary tree, find its maximum depth.
#
# The maximum depth is the number of nodes along the longest path from the root
# node down to the farthest leaf node.
#
# Note: A leaf is a node with no children.
#
# Example:
#
# Given binary tree [3,9,20,null,null,15,7],
#
#
#     3
#    / \
#   9  20
#     /  \
#    15   7
#
# return its depth = 3.
#
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?

  1 + [max_depth(root.left), max_depth(root.right)].max
end
# @lc code=end
