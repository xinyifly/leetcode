#
# @lc app=leetcode id=7 lang=ruby
#
# [7] Reverse Integer
#
# https://leetcode.com/problems/reverse-integer/description/
#
# algorithms
# Easy (25.57%)
# Likes:    2709
# Dislikes: 4214
# Total Accepted:    898.7K
# Total Submissions: 3.5M
# Testcase Example:  '123'
#
# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
#
#
# Input: 123
# Output: 321
#
#
# Example 2:
#
#
# Input: -123
# Output: -321
#
#
# Example 3:
#
#
# Input: 120
# Output: 21
#
#
# Note:
# Assume we are dealing with an environment which could only store integers
# within the 32-bit signed integer range: [-2^31, 2^31 - 1]. For the purpose
# of this problem, assume that your function returns 0 when the reversed
# integer overflows.
#
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def reverse(x)
  y = x.to_s.gsub(/\d+/, &:reverse).to_i
  y >= -2**31 && y <= 2**31 - 1 ? y : 0
end
# @lc code=end
