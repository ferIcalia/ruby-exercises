class Order
  attr_reader :status
  attr_accessor :total_products

  def initialize
    @total_products = 0
    @status = "incomplete"
  end

  def add_to_cart
    @total_products = @total_products + 1
  end

  def update_discount
    if @total_products > 5
      @discount = 0.20
    else
      @discount = 0
    end
  end

  def check_out
    return 'You must have products to proceed' if @total_products.zero?

    @status = 'complete'
  end

end
