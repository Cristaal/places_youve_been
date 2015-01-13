require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require("./lib/places_youve_been")

get('/') do
  @places = Places.all()
  erb(:index)
end

post('/places_youve_been') do
  locale = params.fetch("locale")
  place = Places.new(locale)
  place.save()
  erb(:success)
end
