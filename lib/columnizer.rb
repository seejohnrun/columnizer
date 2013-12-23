module Columnizer

  extend self

  def columnize_print(data, options = {})
    puts columnize(data, options)
  end

  def columnize(data, options = {})
    # get sizes
    sizes = field_sizes(data)
    padding = options[:padding] || 0
    # now go through and print them
    str = ''
    data.each do |row|
      sizes.size.times do |i|
        str += col_str(row[i], sizes[i], i == sizes.size - 1 ? 0 : padding)
      end
      str += "\n"
    end
    str
  end

  private

  # Get an individual column
  def col_str(item, size, padding)
    str = item.to_s
    str += ' ' * (size - str.size)
    str += ' ' * padding
    str
  end

  # get all of the sizes
  def field_sizes(data)
    sizes = []
    data.each do |row|
      row.each_with_index do |field, index|
        c = sizes[index]
        sizes[index] = field.to_s.size if c.nil? || c < field.to_s.size
      end
    end
    sizes
  end

end
