module MyEnumerable
  # All?
  def all?
    arr = []
    @list.each { |i| arr.push(i) if yield i }
    puts arr.length == @list.length
  end
end