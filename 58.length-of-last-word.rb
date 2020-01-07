#
# @lc app=leetcode id=58 lang=ruby
#
# [58] Length of Last Word
#
# https://leetcode.com/problems/length-of-last-word/description/
#
# algorithms
# Easy (32.38%)
# Likes:    494
# Dislikes: 2049
# Total Accepted:    323K
# Total Submissions: 997.1K
# Testcase Example:  '"Hello World"'
#
# Given a string s consists of upper/lower-case alphabets and empty space
# characters ' ', return the length of last word (last word means the last
# appearing word if we loop from left to right) in the string.
#
# If the last word does not exist, return 0.
#
# Note: A word is defined as a maximal substring consisting of non-space
# characters only.
#
# Example:
#
#
# Input: "Hello World"
# Output: 5
#
#
#
#
#

# @lc code=start
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.split(' ').last.to_s.size
end
# @lc code=end
