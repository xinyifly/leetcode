#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#
# https://leetcode.com/problems/longest-common-prefix/description/
#
# algorithms
# Easy (34.49%)
# Likes:    1864
# Dislikes: 1591
# Total Accepted:    607.5K
# Total Submissions: 1.8M
# Testcase Example:  '["flower","flow","flight"]'
#
# Write a function to find the longest common prefix string amongst an array of
# strings.
#
# If there is no common prefix, return an empty string "".
#
# Example 1:
#
#
# Input: ["flower","flow","flight"]
# Output: "fl"
#
#
# Example 2:
#
#
# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
#
#
# Note:
#
# All given inputs are in lowercase letters a-z.
#
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  strs.reduce do |common, str|
    common.chars.each.with_index.reduce('') do |prefix, (chr, index)|
      break prefix if chr != str[index]

      prefix + chr
    end
  end || ''
end
# @lc code=end
