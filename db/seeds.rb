require 'open-uri'

require 'json'
base_url = "http://api.crunchbase.com/v/1/"
key = "atsvjzz7q9apzywd9ex3t67e"
api_key = "&api_key=#{key}"
 
people = "people.js?"
 
data = JSON.parse(open(base_url+people+api_key).read)
 
individual_perma = Array.new
 
10.times.data do |i|
  individual_perma << i["permalink"]
   e = Entity.new
   e.name = i["first_name"] + " " + i["last_name"]
   e.perma = i["permalink"]
   e.kind = "individual"
   e.save

   puts "Added #{i}!"
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
