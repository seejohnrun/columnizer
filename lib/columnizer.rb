module Columnizer

  def self.columnize_print(data, options = {})
    puts self.columnize(data, options)
  end

  def self.columnize(data, options = {})
    # get sizes
    sizes = field_sizes(data)
    # now go through and print them
    str = ''
    data.each do |row|
      row.each_with_index do |field, index|
        str += field.to_s + ' ' * (sizes[index] - field.to_s.size + (index == sizes.size - 1 ? 0 : options[:padding] || 0))
      end
      for index in row.size...sizes.size do # pad out
        str += ' ' * sizes[index]
      end
      str += "\n"
    end
    str
  end

  private

  # get all of the sizes
  def self.field_sizes(data)
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
