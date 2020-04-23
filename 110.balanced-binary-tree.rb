#
# @lc app=leetcode id=110 lang=ruby
#
# [110] Balanced Binary Tree
#
# https://leetcode.com/problems/balanced-binary-tree/description/
#
# algorithms
# Easy (42.24%)
# Likes:    1931
# Dislikes: 151
# Total Accepted:    418.8K
# Total Submissions: 977.8K
# Testcase Example:  '[3,9,20,null,null,15,7]'
#
# Given a binary tree, determine if it is height-balanced.
#
# For this problem, a height-balanced binary tree is defined as:
#
#
# a binary tree in which the left and right subtrees of every node differ in
# height by no more than 1.
#
#
#
#
# Example 1:
#
# Given the following tree [3,9,20,null,null,15,7]:
#
#
#     3
#    / \
#   9  20
#     /  \
#    15   7
#
# Return true.
#
# Example 2:
#
# Given the following tree [1,2,2,3,3,null,null,4,4]:
#
#
#        1
#       / \
#      2   2
#     / \
#    3   3
#   / \
#  4   4
#
#
# Return false.
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
# @return {Boolean}
def is_balanced(root)
  dfs = lambda do |node|
    return 0 if node.nil?

    dl = dfs.call(node.left)
    dr = dfs.call(node.right)

    dl && dr && (dl - dr).abs <= 1 && 1 + [dl, dr].max
  end

  dfs.call(root) && true
end
# @lc code=end
