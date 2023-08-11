class CreatedProduct
  include HTTParty
  base_uri CONFIG['BASE_URI']
  headers CONFIG['api_headers']
  default_timeout 120

  def initialize() end

  def create_product(token, body)
    self.class.headers 'Authorization' => token
    self.class.post('https://qa/products', body:  body.to_json)
  end

  def create_body(payload)
    data = {}
    data[:categoryId] = 'cba399d3'
    data[:subcategoryId] = '385dcdeb'
    data[:specialtyId] = 'a974556f'
    data[:isOnline] = true
    data[:name] = payload[:name]
    data[:description] = payload[:description]
    data[:synonyms] = payload[:name], payload[:name]
    data[:tussCode] = payload[:name]
    data[:productCode] = payload[:name]
    data[:isFinished] = true

    data
  end

end