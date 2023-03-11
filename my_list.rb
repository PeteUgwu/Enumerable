require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    n = 0
    while @list[n]
      yield(@list[n])
      n += 1
    end
  end
end