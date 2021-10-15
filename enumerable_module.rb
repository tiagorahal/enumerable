module MyEnumerable
    def all?
      all = true
      list.each do |i|
        all = false unless yield(i)
      end
      all
    end
  
    def any?
      any = false
      list.each do |i|
        any = true if yield(i)
      end
      any
    end
  
    def filter
      filter = []
      list.each do |i|
        filter.push(i) if yield(i)
      end
      filter
    end
  end