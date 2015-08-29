require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')
require('pry')


get('/') do
  erb(:index)
end

get('/title') do
  @string_to_be_searched = params.fetch('string_to_be_searched')
  @search_word = params.fetch('search_word')

  @string_count = @string_to_be_searched.word_count(@search_word)
  erb(:title)
end
