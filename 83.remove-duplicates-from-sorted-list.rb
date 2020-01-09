#
# @lc app=leetcode id=83 lang=ruby
#
# [83] Remove Duplicates from Sorted List
#
# https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/
#
# algorithms
# Easy (43.90%)
# Likes:    1052
# Dislikes: 90
# Total Accepted:    395K
# Total Submissions: 898K
# Testcase Example:  '[1,1,2]'
#
# Given a sorted linked list, delete all duplicates such that each element
# appear only once.
#
# Example 1:
#
#
# Input: 1->1->2
# Output: 1->2
#
#
# Example 2:
#
#
# Input: 1->1->2->3->3
# Output: 1->2->3
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

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  delete = lambda do |p, val|
    return if p.nil?
    return delete.call(p.next, p.val) if p.val == val

    q = ListNode.new(p.val)
    q.next = delete.call(p.next, p.val)
    q
  end
  delete.call(head, nil)
end
# @lc code=end
