class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date
  field :_id, type: String, default: ->{name.to_s.parameterize}

  validates :name, presence:true, uniqueness:true

  embeds_many :reviews
end
