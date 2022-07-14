require 'rest-client'
require 'json'

# Requisicao a API Search do github usando a gem rest-client
url = 'https://api.github.com/search/repositories?'
q = 'spotcode'
languange = 'ruby'

# Armazenando o retorno da API em um formato JSON
resp = RestClient.get "#{url}q=#{q}&languange=#{languange}"

# Realizando o parse JSON -> Hash
respJson = JSON.parse(resp.body)

# Mostrando o resultado
puts respJson
