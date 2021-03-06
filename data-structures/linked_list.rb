class ListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end
end

# Create list for testing
def create_list(vals)
  start = ListNode.new(1)
  l = start
  vals.each do |val|
    new_node = ListNode.new(val)
    l.next = new_node
    l = new_node
  end

  start
end

if __FILE__ == $PROGRAM_NAME
  def print_values(l)
    while l
      print "#{l.value},"
      l = l.next
    end
    puts
  end

  list = create_list([2,3,4,5,6,7])
  print_values(list)
end