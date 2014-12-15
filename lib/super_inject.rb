class Array

  def super_inject(optional = nil)
    self.unshift(optional) unless optional == nil
    accumulator = self.first
    self[1..-1].each do |elem|
      accumulator = yield(accumulator, elem)
    end
    return accumulator
  end

end