require 'httparty'
require 'json'

# response = HTTParty.post('http://localhost:3000/users/sign_in.json', body: { user: { phone: '550053321', password: 'password'}})
# response = HTTParty.post('http://localhost:3000/users/sign_up.json', body: { user: { first: 'john', last: 'g', phone: '5550053321', password: 'asdhfashdf'}})
# response = HTTParty.get('http://localhost:3000/streams/1.json')
# response = HTTParty.post('http://localhost:3000/streams.json', body: { stream: { name: 'The best stream!', owner_id: 1}})
p response.code
p response.parsed_response
