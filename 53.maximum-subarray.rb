#
# @lc app=leetcode id=53 lang=ruby
#
# [53] Maximum Subarray
#
# https://leetcode.com/problems/maximum-subarray/description/
#
# algorithms
# Easy (45.27%)
# Likes:    5881
# Dislikes: 247
# Total Accepted:    726.7K
# Total Submissions: 1.6M
# Testcase Example:  '[-2,1,-3,4,-1,2,1,-5,4]'
#
# Given an integer array nums, find the contiguous subarray (containing at
# least one number) which has the largest sum and return its sum.
#
# Example:
#
#
# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
#
#
# Follow up:
#
# If you have figured out the O(n) solution, try coding another solution using
# the divide and conquer approach, which is more subtle.
#
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  dpi = nums.first
  nums.reduce do |max, num|
    dpi = num + (dpi.positive? ? dpi : 0)
    [max, dpi].max
  end
end
# @lc code=end
