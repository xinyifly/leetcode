#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#
# https://leetcode.com/problems/valid-parentheses/description/
#
# algorithms
# Easy (37.75%)
# Likes:    3831
# Dislikes: 190
# Total Accepted:    797K
# Total Submissions: 2.1M
# Testcase Example:  '"()"'
#
# Given a string containing just the characters '(', ')', '{', '}', '[' and
# ']', determine if the input string is valid.
#
# An input string is valid if:
#
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
#
#
# Note that an empty string is also considered valid.
#
# Example 1:
#
#
# Input: "()"
# Output: true
#
#
# Example 2:
#
#
# Input: "()[]{}"
# Output: true
#
#
# Example 3:
#
#
# Input: "(]"
# Output: false
#
#
# Example 4:
#
#
# Input: "([)]"
# Output: false
#
#
# Example 5:
#
#
# Input: "{[]}"
# Output: true
#
#
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_valid(s)
  pairs = { ')' => '(', ']' => '[', '}' => '{' }

  s.chars.each_with_object([]) do |chr, stack|
    if pairs[chr]
      break if stack.pop != pairs[chr]
    else
      stack << chr
    end
  end == []
end
# @lc code=end
