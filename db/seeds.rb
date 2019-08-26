# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient.get("https://api.phish.net/v3/shows/links?apikey=07E4EA1561E2A5D45A58")
  data JSON.parse(response)
    data.each do |show|
      Show.create!(artist: show["response"]["data"]["artist"])
    end
