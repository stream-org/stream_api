require 'httparty'
require 'json'

p like_response = HTTParty.post('http://localhost:3000/api/likes.json', body: { like: { user_id: 1, picture_id: 1 }})
like_id = like_response["id"]

responses = [
  HTTParty.post('http://localhost:3000/api/users/sign_in.json', body: { user: { phone: '550053321', password: 'password'}}),
  HTTParty.post('http://localhost:3000/api/users/sign_up.json', body: { user: { first: 'john', last: 'g', phone: '5550053321', password: 'asdhfashdf'}}),
  HTTParty.get( 'http://localhost:3000/api/streams/5.json'),
  HTTParty.post('http://localhost:3000/api/streams.json', body: { stream: { name: 'The best stream!', owner_id: 1}}),
  HTTParty.get( 'http://localhost:3000/api/users/1/streams.json'),
  HTTParty.get( 'http://localhost:3000/api/pictures/1.json'),
  HTTParty.delete("http://localhost:3000/api/likes/#{like_id}.json")
]

responses.each do |r|
  p r.code
  p r.parsed_response
end
