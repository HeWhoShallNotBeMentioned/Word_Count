class String
  define_method(:word_count) do
    long_string = "If Peter Piper picked a peck of pickeled peppers, where's the peck of pickeled peppers that Peter Piper picked?"
    short_string = "pickeled"
    string_count = 0
    string_array =[]

    string_array = long_string.split(/ /)
    string_count = string_array.count(short_string)

  end
end
