#
# @lc app=leetcode id=108 lang=ruby
#
# [108] Convert Sorted Array to Binary Search Tree
#
# https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/description/
#
# algorithms
# Easy (54.10%)
# Likes:    2014
# Dislikes: 190
# Total Accepted:    370.6K
# Total Submissions: 661.2K
# Testcase Example:  '[-10,-3,0,5,9]'
#
# Given an array where elements are sorted in ascending order, convert it to a
# height balanced BST.
#
# For this problem, a height-balanced binary tree is defined as a binary tree
# in which the depth of the two subtrees of every node never differ by more
# than 1.
#
# Example:
#
#
# Given the sorted array: [-10,-3,0,5,9],
#
# One possible answer is: [0,-3,9,-10,null,5], which represents the following
# height balanced BST:
#
#       0
#      / \
#    -3   9
#    /   /
#  -10  5
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

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return if nums.size.zero?

  mid = nums.size / 2

  root = TreeNode.new(nums[mid])
  root.left = sorted_array_to_bst(nums[0, mid])
  root.right = sorted_array_to_bst(nums[(mid + 1)..-1])
  root
end
# @lc code=end
