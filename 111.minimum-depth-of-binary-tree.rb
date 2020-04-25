#
# @lc app=leetcode id=111 lang=ruby
#
# [111] Minimum Depth of Binary Tree
#
# https://leetcode.com/problems/minimum-depth-of-binary-tree/description/
#
# algorithms
# Easy (36.31%)
# Likes:    1173
# Dislikes: 630
# Total Accepted:    386K
# Total Submissions: 1M
# Testcase Example:  '[3,9,20,null,null,15,7]'
#
# Given a binary tree, find its minimum depth.
#
# The minimum depth is the number of nodes along the shortest path from the
# root node down to the nearest leaf node.
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
# return its minimum depth = 2.
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
def min_depth(root)
  bfs = lambda do |queue|
    node, depth = queue.shift

    return depth unless node.left || node.right

    queue << [node.left, 1 + depth] if node.left
    queue << [node.right, 1 + depth] if node.right

    bfs.call(queue)
  end

  root ? bfs.call([[root, 1]]) : 0
end
# @lc code=end
