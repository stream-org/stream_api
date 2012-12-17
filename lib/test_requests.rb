require 'httparty'
require 'json'

response = HTTParty.post('http://localhost:3000/users/sign_in.json', body: { user: { phone: '550053321', password: 'password'}})
# response = HTTParty.post('http://localhost:3000/users/sign_up.json', body: { user: { first: 'john', last: 'g', phone: '5550053321', password: 'asdhfashdf'}})
p response.code
p response.parsed_response
