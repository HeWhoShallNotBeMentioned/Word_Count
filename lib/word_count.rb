require('pry')

class String


  define_method(:word_count) do |short_string|
    long_string = self
    string_count = 0


    string_array = self.split(/ /)
    string_count = string_array.count(short_string)

    return string_count

  end
end
