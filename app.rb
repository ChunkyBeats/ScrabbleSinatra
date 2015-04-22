require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @score = params.fetch('word').scrabble()
  erb(:scrabble)
end
