require 'httparty'
require 'json'

response = HTTParty.post('http://localhost:3000/users/sign_in.json', body: { user: { phone: '5550053321', password: 'password'}})
p response.parsed_response
