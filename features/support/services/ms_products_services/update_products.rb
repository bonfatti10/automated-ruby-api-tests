class UpdateProduct
  include HTTParty
  base_uri CONFIG['BASE_URI']
  headers CONFIG['API_HEADERS']
  default_timeout 120

  def initialize() end

  def update_put_product(token, body, id)
    self.class.headers 'Authorization' => token
    
    self.class.put("https://qa/products/#{id}", body:  body.to_json)
  end

  def update_body(payload)
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
