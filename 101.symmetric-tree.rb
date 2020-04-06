#
# @lc app=leetcode id=101 lang=ruby
#
# [101] Symmetric Tree
#
# https://leetcode.com/problems/symmetric-tree/description/
#
# algorithms
# Easy (45.19%)
# Likes:    3462
# Dislikes: 83
# Total Accepted:    578.3K
# Total Submissions: 1.3M
# Testcase Example:  '[1,2,2,3,4,4,3]'
#
# Given a binary tree, check whether it is a mirror of itself (ie, symmetric
# around its center).
#
# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
#
#
#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
#
#
#
#
# But the following [1,2,2,null,3,null,3] is not:
#
#
#     1
#    / \
#   2   2
#    \   \
#    3    3
#
#
#
#
# Note:
# Bonus points if you could solve it both recursively and iteratively.
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
def is_symmetric(root)
  root.nil? || is_symmetric_inner(root.left, root.right)
end

def is_symmetric_inner(p, q)
  return p == q if p.nil? || q.nil?
  return false if p.val != q.val

  is_symmetric_inner(p.left, q.right) && is_symmetric_inner(p.right, q.left)
end
# @lc code=end
