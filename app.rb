require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/title') do
  @string_count = params.fetch('long_string').word_count(params.fetch('short_string'))
  erb(:title)
end
