require('pry')

class String


  define_method(:word_count) do |word|
    self.downcase!
    word.downcase!
    @string_count = 0
    string_array = []

    string_array = self.split(/ /)
    @string_count = string_array.count(word)

    return @string_count

  end

end
