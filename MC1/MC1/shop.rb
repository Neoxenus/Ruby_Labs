require './customer'
class Shop
  attr_accessor :customers

  def to_s
    result =""
    customers.each do |x|
      result << x.to_s
      result<<"\n"
    end
    result
  end

  def initialize(customers = Customer[])
    @customers = customers
  end

  def list_of_customers
    result = Array.new
    result = customers.sort_by{|customer| [customer.last_name, customer.first_name, customer.middle_name]} unless customers.nil?
    result
  end

  def list_with_card_number_in_range(lower_border, upper_border)
    result = Array.new
    customers.each { |customer|
      result.append(customer) if lower_border < customer.credit_card_number && customer.credit_card_number < upper_border
    } unless customers.nil?
    result
  end

end
