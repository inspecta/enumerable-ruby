module MyEnumerable
  # All?
  def all?
    arr = []
    @list.each { |i| arr.push(i) if yield i }
    puts arr.length == @list.length
  end
  # any?
  def any?
    arr = []
    @list.each { |i| arr.push(i) if yield i }
    puts true ? arr.length > 0 : false
  end
  
  #filter
  def filter
    @arr = []
    @list.each { |i| @arr.push(i) if yield i }
    print "#{@arr} \n"
  end 
end