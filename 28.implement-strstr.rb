#
# @lc app=leetcode id=28 lang=ruby
#
# [28] Implement strStr()
#
# https://leetcode.com/problems/implement-strstr/description/
#
# algorithms
# Easy (33.44%)
# Likes:    1194
# Dislikes: 1612
# Total Accepted:    548.1K
# Total Submissions: 1.6M
# Testcase Example:  '"hello"\n"ll"'
#
# Implement strStr().
#
# Return the index of the first occurrence of needle in haystack, or -1 if
# needle is not part of haystack.
#
# Example 1:
#
#
# Input: haystack = "hello", needle = "ll"
# Output: 2
#
#
# Example 2:
#
#
# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
#
#
# Clarification:
#
# What should we return when needle is an empty string? This is a great
# question to ask during an interview.
#
# For the purpose of this problem, we will return 0 when needle is an empty
# string. This is consistent to C's strstr() and Java's indexOf().
#
#

# @lc code=start
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle == ''

  haystack.size.times do |i|
    return i if haystack[i, needle.size] == needle
  end

  -1
end
# @lc code=end
