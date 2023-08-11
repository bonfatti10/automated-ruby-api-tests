class ListProduct
  include HTTParty
  base_uri CONFIG['BASE_URI']
  headers CONFIG['api_headers']
  default_timeout 120

  def initialize() end

  def list_product(token)
    self.class.headers 'Authorization' => token
    self.class.get('https://qa/products?page=1&limit=100')
  end

  def take_id(token)
    self.class.headers 'Authorization' => token
    result = self.class.get('https://qa/products?page=1&limit=100')
    result['products'].sample['id']
  end

  def list_id_product(token, id)
    self.class.headers 'Authorization' => token
    self.class.get("https://qa-products/#{id}")
  end
end
