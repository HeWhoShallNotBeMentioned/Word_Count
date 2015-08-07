require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  it ('takes a string input and gives the number of times a second word is in the string') do
    expect(("Peter Piper picked a peck").word_count("peck")).to(eq(1))
  end
end
