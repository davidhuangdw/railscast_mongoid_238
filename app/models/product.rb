class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date

  validates :name, presence:true, uniqueness:true

  embeds_many :reviews
end
