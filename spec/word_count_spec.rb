require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  it ('takes a string input and gives the number of times a second word is in the string') do
    expect(("peck").word_count()).to(eq(2))
  end
end
