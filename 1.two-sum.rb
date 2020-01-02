#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#
# https://leetcode.com/problems/two-sum/description/
#
# algorithms
# Easy (44.87%)
# Likes:    12942
# Dislikes: 462
# Total Accepted:    2.4M
# Total Submissions: 5.4M
# Testcase Example:  '[2,7,11,15]\n9'
#
# Given an array of integers, return indices of the two numbers such that they
# add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may
# not use the same element twice.
#
# Example:
#
#
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].
#
#
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  [*0..nums.size - 1].combination(2) do |(i, j)|
    return [i, j] if nums[i] + nums[j] == target
  end
end
# @lc code=end
