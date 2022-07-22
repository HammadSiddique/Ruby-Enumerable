require_relative './enumerable'

class MyList
    include MyEnumerable

    def data(*elems)
        @list = elems
    end

    def each(&args)
        @list.each(&args)
    end
end

new_list = MyList.new(1, 2, 3, 4)

# Test #all?
(new_list.all? {|e| e < 5})
#  true
(new_list.all? {|e| e > 5})
# false

# Test #any?
(new_list.any? {|e| e == 2})
# true
(new_list.any? {|e| e == 5})
# false