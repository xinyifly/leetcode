#
# @lc app=leetcode id=107 lang=ruby
#
# [107] Binary Tree Level Order Traversal II
#
# https://leetcode.com/problems/binary-tree-level-order-traversal-ii/description/
#
# algorithms
# Easy (49.27%)
# Likes:    1121
# Dislikes: 202
# Total Accepted:    291.1K
# Total Submissions: 574.8K
# Testcase Example:  '[3,9,20,null,null,15,7]'
#
# Given a binary tree, return the bottom-up level order traversal of its nodes'
# values. (ie, from left to right, level by level from leaf to root).
#
#
# For example:
# Given binary tree [3,9,20,null,null,15,7],
#
#     3
#    / \
#   9  20
#     /  \
#    15   7
#
#
#
# return its bottom-up level order traversal as:
#
# [
#   [15,7],
#   [9,20],
#   [3]
# ]
#
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
# @return {Integer[][]}
def level_order_bottom(root)
  level_order_top(root).reverse
end

def level_order_top(root)
  return [] if root.nil?

  left = level_order_top(root.left)
  right = level_order_top(root.right)

  [[root.val]] + Array.new([left.size, right.size].max) do |index|
    (left[index] || []) + (right[index] || [])
  end
end
# @lc code=end
