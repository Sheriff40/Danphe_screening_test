def user
  has_many :shops, dependent: :destroy
end

def shop
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :categories, dependent: :destroy
end

def category
  belongs_to :shop
  has_many :category_and_products, dependent: :destroy
  has_many :products, through: :category_and_products
end

def products
  belongs_to :shop
  has_many :product_prices, dependent: :destroy
  has_many :category_and_products, dependent: :destroy
  has_many :categories, through: :category_and_products
end

def product_prices
  # == Schema Information
  #
  # Table name: product_prices
  #
  #  id          :bigint           not null, primary key
  #  product_id  :bigint           not null
  #  price_date  :date
  #  price       :string

  belongs_to :product
end
