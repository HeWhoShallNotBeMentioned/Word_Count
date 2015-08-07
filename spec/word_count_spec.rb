require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  it ('takes a string input and splits it into and array') do
    expect(("If Peter Piper picked a peck of pickeled peppers").word_count()).to(eq(["If", "Peter", "Piper",
      "picked", "a", "peck", "of", "pickeled", "peppers"]))
  end
end
