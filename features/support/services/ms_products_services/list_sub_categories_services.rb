class ListSubCategories
  include HTTParty
  base_uri CONFIG['BASE_URI']
  default_timeout 120

  def initialize() end

  def list_sub_categories
    self.class.get('/Sub-Categories')
  end
end
