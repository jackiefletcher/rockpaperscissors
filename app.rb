require('sinatra')
require('sinatra/reloader')
require('./lib/game')
also_reload('lib/game.rb')

get('/splash') do
  erb(:splash)
end

get('/form') do
  erb(:form)
end

get('/formloner') do
  erb(:formloner)
end

get('/display') do
  @display = (params.fetch('player1')).beats?(params.fetch('player2'))
  erb(:display)
end

get('/displayloner') do
  @displayloner = (params.fetch('playerloner')).beats?(["rock", "paper", "scissors"].shuffle().shift())
  erb(:displayloner)
end
