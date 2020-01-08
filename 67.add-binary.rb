#
# @lc app=leetcode id=67 lang=ruby
#
# [67] Add Binary
#
# https://leetcode.com/problems/add-binary/description/
#
# algorithms
# Easy (41.61%)
# Likes:    1320
# Dislikes: 237
# Total Accepted:    373.3K
# Total Submissions: 894.7K
# Testcase Example:  '"11"\n"1"'
#
# Given two binary strings, return their sum (also a binary string).
#
# The input strings are both non-empty and contains only characters 1 or 0.
#
# Example 1:
#
#
# Input: a = "11", b = "1"
# Output: "100"
#
# Example 2:
#
#
# Input: a = "1010", b = "1011"
# Output: "10101"
#
#

# @lc code=start
# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  return a if b.empty?
  return b if a.empty?

  high = add_binary(a.chop, b.chop)

  case [a[-1], b[-1]]
  when %w[0 0]
    high + '0'
  when %w[1 1]
    add_binary(high, '1') + '0'
  else
    high + '1'
  end
end
# @lc code=end
