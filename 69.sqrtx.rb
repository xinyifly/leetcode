#
# @lc app=leetcode id=69 lang=ruby
#
# [69] Sqrt(x)
#
# https://leetcode.com/problems/sqrtx/description/
#
# algorithms
# Easy (32.56%)
# Likes:    1006
# Dislikes: 1635
# Total Accepted:    460.2K
# Total Submissions: 1.4M
# Testcase Example:  '4'
#
# Implement int sqrt(int x).
#
# Compute and return the square root of x, where x is guaranteed to be a
# non-negative integer.
#
# Since the return type is an integer, the decimal digits are truncated and
# only the integer part of the result is returned.
#
# Example 1:
#
#
# Input: 4
# Output: 2
#
#
# Example 2:
#
#
# Input: 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since
# the decimal part is truncated, 2 is returned.
#
#
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  l = 1
  r = x
  n = 0
  while l <= r
    m = (l + r) / 2
    if m**2 <= x
      n = m
      l = m + 1
    else
      r = m - 1
    end
  end
  n
end
# @lc code=end
