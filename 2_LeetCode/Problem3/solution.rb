# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
class ListNode
    attr_accessor :val, :next

    def initialize(val = 0 , _next = nil)
        @val = val
        @next = _next
    end
end

def add_two_numbers(l1, l2)
    
    dummy = ListNode.new
    current = dummy #que es mi puntero
    carry = 0

    while l1 || l2 || carry != 0
        sum = carry
        sum += l1.val if l1
        sum += l2.val if l2

        #calculamos el nuevo valor del nodo y el nuevo carry
        carry = sum / 10
        current.next = ListNode.new(sum % 10)
        
        #avanzamos los punteros
        current = current.next
        l1 = l1&.next
        l2 = l2&.next
    end
    #Devolvemos el resultado (dummy.next es la lista resultante)
    dummy.next
end