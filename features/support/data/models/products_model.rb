class ProductsCreateModel
  attr_accessor :referencecode, :name, :description, :tussCode, :synonyms

  def to_hash
    {
      referencecode: @referencecode,
      name: @name,
      description: @description,
      tussCode: @tussCode,
      synonyms: @synonyms
    }
  end
end
