module MyEnumerable
    def all?
        each do |elements|
            return false unless yield(elements)
        end
        true
    end
end