#
# @lc app=leetcode id=70 lang=ruby
#
# [70] Climbing Stairs
#
# https://leetcode.com/problems/climbing-stairs/description/
#
# algorithms
# Easy (45.71%)
# Likes:    3124
# Dislikes: 103
# Total Accepted:    540.8K
# Total Submissions: 1.2M
# Testcase Example:  '2'
#
# You are climbing a stair case. It takes n steps to reach to the top.
#
# Each time you can either climb 1 or 2 steps. In how many distinct ways can
# you climb to the top?
#
# Note: Given n will be a positive integer.
#
# Example 1:
#
#
# Input: 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
#
#
# Example 2:
#
#
# Input: 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step
#
#
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  n <= 2 ? n : (3..n).reduce([2, 1]) { |(p1, p2)| [p1 + p2, p1] }[0]
end
# @lc code=end
