# This method will not work as adverstised...
def get_next_number(num)
  num.next - 1
end

# The test will catch the error!
assert('get_next_number') { get_next_number(1).eql?(2) }
