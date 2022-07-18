class ShoppingCart

  attr_reader :name,
              :capacity,
              :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details_hash = {
      name: @name,
      capacity: @capacity
    }
  end

  def total_number_of_products
    @total = 0
    @products.each do |product|
      @total += product.quantity
    end
    @total
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(category)
    @products.find_all { |product| product.category == category }
  end

  def percentage_occupied
    (total_number_of_products.to_f / @capacity * 100).round(2)
  end

  def sorted_products_by_quantity
    #use .sort?
  end

  def product_breakdown
  end
end
