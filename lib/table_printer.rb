class TablePrinter

  TAB_PADDING = 3

  def initialize data
    @data = data
  end

  def add_header header
    @header= Header.new header
  end

  def draw
    tab_size = calculate_tab_size
    @header.draw(tab_size) if @header
    @data.each_with_index do |array, index|
      @header.draw_row_index index if @header
      array.each do |element|
        printf "%-#{element==array.last ? 1 : tab_size}s", element
      end
      print "\n"
      draw_row_separator unless array==@data.last
    end
  end

  def draw_row_separator
    @header.draw_row_separator if @header
    print "\n"
  end


  def calculate_tab_size
    max_body_value = @data.flatten.max
    max_header_value = @header ? @header.data.max : 0
    max_value = [max_body_value, max_header_value].max
    max_value.to_s.size + TAB_PADDING
  end


  class Header

    attr_reader :data
    attr_accessor :max_digits

    def initialize data
      @data = data
      @max_digits= @data.max.to_s.size
    end

    def draw_row_index(row_index)
      printf "%-#{@data.max.to_s.size}s %s", @data[row_index], "| "
    end

    def draw tab_size
      draw_columns_index(tab_size)
      print "\n"
      draw_dashed_line(tab_size)
      print "\n"
    end

    def draw_columns_index(tab_size)
      print padding, '| '
      @data.each do |element|
        printf "%-#{element==@data.last ? 1 : tab_size}s", element
      end
    end

    def draw_dashed_line(tab_size)
      dashed_line_size = tab_size* (@data.size-1)
      row_index_size = (@max_digits+1)
      final_part_size = @data.last.to_s.size+1

      print '-' * row_index_size,'+', '-' * dashed_line_size
      print '-' * final_part_size
    end

    def draw_row_separator
      print padding
      print "|"
    end

    def padding
      ' '*(@max_digits+1)
    end
  end

end