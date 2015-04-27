class TablePrinter

  def initialize data
    @data = data
  end

  def add_header header
    @header= header
  end

  def draw

    max_value =  ([@data]+[@header]).compact.flatten.max
    tab_size = max_value.to_s.size + 3
    if @header
      print "  | "
      @header.each do |element|
        printf "%-#{element==@header.last ? '' : tab_size}s",element
      end
      print "\n"
      print "--+"
      (@header.size-1).times { (tab_size).times {print '-' }}
      (tab_size-2).times{print "-"}
      print "\n"
    end
    @data.each_with_index do |array, index|
      if @header
        print @header[index]
        print " | "
      end
      array.each do |element|
        printf "%-#{element==array.last ? '' : tab_size}s",element
      end
      print "\n"
      unless array == @data.last
        print "  |" if @header
        print "\n" unless array == @data.last

      end
    end
  end

end