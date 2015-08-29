require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  it ('takes a string input and gives the number of times a second word is in the string') do
    expect(("Peter Piper picked a peck").word_count("peck")).to(eq(1))
  end

  it('takes a user provided complex string and simple argument string and returns how many times the argument string appears in the first string') do
    expect(('tulips today are not like tulips our parent knew growing up').word_count('tulips')).to(eq(2))
  end

  it('handles strings with capitalizations within the search') do
    expect(("Mary had a little lamb named mary").word_count('Mary')).to(eq(2))
  end
end
