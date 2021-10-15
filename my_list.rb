require_relative 'enumerable_module'

class MyList
  include MyEnumerable

  attr_reader :list

  def initialize(*args)
    @list = args
  end

  def each
    return to_enum(:each) unless block_given?

    n = 0
    while n < @list.length
      yield(@list[n])
      n += 1
    end
    @list
  end
end