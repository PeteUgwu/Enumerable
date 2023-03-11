module MyEnumerable
    def all?
      result = true
      each { |e| result = false unless yield e } if block_given?
      result
    end
  
    def any?
      result = false
      each { |e| result = true if yield e } if block_given?
      result
    end
  
    def filter?
      result = []
      each { |e| result.push(e) if yield e } if block_given?
      result
    end
  end