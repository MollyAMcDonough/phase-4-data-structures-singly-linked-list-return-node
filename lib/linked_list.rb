require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    if !@head || n < 1
      return nil
    else
      node_hash = {'0' => @head}
      length = 1
      current_node = @head

      while current_node.next_node
        current_node = current_node.next_node
        node_hash[length.to_s] = current_node
        length += 1
      end
      if length-n < 0
        return nil
      else
        node = node_hash[(length-n).to_s]
        node.value
      end
    end
  end

  # def nth_from_end(n)
  #   node = self.head
  #   length = 0
  #   while node
  #     length += 1
  #     node = node.next_node
  #   end
  #   return nil if n < 1 || n > length
  #   node = self.head
  #   count = 0
  #   while count < length - n
  #     node = node.next_node
  #     count += 1
  #   end
  #   node.value
  # end

end
