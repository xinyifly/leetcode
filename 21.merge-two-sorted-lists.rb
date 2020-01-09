#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
#
# https://leetcode.com/problems/merge-two-sorted-lists/description/
#
# algorithms
# Easy (50.47%)
# Likes:    3110
# Dislikes: 455
# Total Accepted:    789.8K
# Total Submissions: 1.6M
# Testcase Example:  '[1,2,4]\n[1,3,4]'
#
# Merge two sorted linked lists and return it as a new list. The new list
# should be made by splicing together the nodes of the first two lists.
#
# Example:
#
# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4
#
#
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  if l1.val <= l2.val
    p = ListNode.new(l1.val)
    p.next = merge_two_lists(l1.next, l2)
  else
    p = ListNode.new(l2.val)
    p.next = merge_two_lists(l1, l2.next)
  end
  p
end
# @lc code=end
