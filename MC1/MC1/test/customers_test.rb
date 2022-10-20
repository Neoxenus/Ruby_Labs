require 'minitest/autorun'
require './shop'
class CustomersTest < Minitest::Test
  @@shop = Shop.new([Customer.new(:Surkov, :Vladislav, :Kyrylovich,
                                "77 8th St.Butler, PA 16001", "9722-3222-6096-0202","4243-9722-322-6096-0202"),
                   Customer.new(:Stepaniuk,:Volodymyr, :Borisovich,
                                "7237 Green Hill Street Hagerstown, MD 21740", "2282-2625-4572", "2625-2282-2625-4572"),
                   Customer.new(:Chabaniuk, :Oleksandr, :Romanovich,
                                "59 Creekside St. Owosso, MI 48867", "5270-7287-2953", "2953-5270-7287-2953"),
                   Customer.new(:Havryliuk, :Dmytro, :Illich,
                                "14 Cherry Road Westlake, OH 44145", "9204-5241-1847", "5241-9204-5241-1847"),
                   Customer.new(:Shevchenko, :Taras, :Grigorovich,
                                "82 Tunnel Court Bear, DE 19701", "8206-7821-4928", "8206-8206-7821-4928"),
                   Customer.new(:Shevchenko, :Ivan, :Yakovych,
                                "12 Tunnel Court Bread, ME 23701", "1206-7821-4928", "1306-8206-7821-4228")
                  ])
  def test_case0
    assert_output(stdout = "[id: 0, last_name: Surkov, first_name: Vladislav, middle_name: Kyrylovich, address: 77 8th St.Butler, PA 16001, credit_card_number: 9722-3222-6096-0202, bank_account_number: 4243-9722-322-6096-0202]
[id: 1, last_name: Stepaniuk, first_name: Volodymyr, middle_name: Borisovich, address: 7237 Green Hill Street Hagerstown, MD 21740, credit_card_number: 2282-2625-4572, bank_account_number: 2625-2282-2625-4572]
[id: 2, last_name: Chabaniuk, first_name: Oleksandr, middle_name: Romanovich, address: 59 Creekside St. Owosso, MI 48867, credit_card_number: 5270-7287-2953, bank_account_number: 2953-5270-7287-2953]
[id: 3, last_name: Havryliuk, first_name: Dmytro, middle_name: Illich, address: 14 Cherry Road Westlake, OH 44145, credit_card_number: 9204-5241-1847, bank_account_number: 5241-9204-5241-1847]
[id: 4, last_name: Shevchenko, first_name: Taras, middle_name: Grigorovich, address: 82 Tunnel Court Bear, DE 19701, credit_card_number: 8206-7821-4928, bank_account_number: 8206-8206-7821-4928]
[id: 5, last_name: Shevchenko, first_name: Ivan, middle_name: Yakovych, address: 12 Tunnel Court Bread, ME 23701, credit_card_number: 1206-7821-4928, bank_account_number: 1306-8206-7821-4228]\n"){
      puts @@shop.to_s
    }
  end
  def test_case1

    assert_output(stdout = "[id: 2, last_name: Chabaniuk, first_name: Oleksandr, middle_name: Romanovich, address: 59 Creekside St. Owosso, MI 48867, credit_card_number: 5270-7287-2953, bank_account_number: 2953-5270-7287-2953]
[id: 3, last_name: Havryliuk, first_name: Dmytro, middle_name: Illich, address: 14 Cherry Road Westlake, OH 44145, credit_card_number: 9204-5241-1847, bank_account_number: 5241-9204-5241-1847]
[id: 5, last_name: Shevchenko, first_name: Ivan, middle_name: Yakovych, address: 12 Tunnel Court Bread, ME 23701, credit_card_number: 1206-7821-4928, bank_account_number: 1306-8206-7821-4228]
[id: 4, last_name: Shevchenko, first_name: Taras, middle_name: Grigorovich, address: 82 Tunnel Court Bear, DE 19701, credit_card_number: 8206-7821-4928, bank_account_number: 8206-8206-7821-4928]
[id: 1, last_name: Stepaniuk, first_name: Volodymyr, middle_name: Borisovich, address: 7237 Green Hill Street Hagerstown, MD 21740, credit_card_number: 2282-2625-4572, bank_account_number: 2625-2282-2625-4572]
[id: 0, last_name: Surkov, first_name: Vladislav, middle_name: Kyrylovich, address: 77 8th St.Butler, PA 16001, credit_card_number: 9722-3222-6096-0202, bank_account_number: 4243-9722-322-6096-0202]\n"){
      puts @@shop.list_of_customers
    }
  end
  def test_case2
    assert_output(stdout = "[id: 2, last_name: Chabaniuk, first_name: Oleksandr, middle_name: Romanovich, address: 59 Creekside St. Owosso, MI 48867, credit_card_number: 5270-7287-2953, bank_account_number: 2953-5270-7287-2953]
[id: 3, last_name: Havryliuk, first_name: Dmytro, middle_name: Illich, address: 14 Cherry Road Westlake, OH 44145, credit_card_number: 9204-5241-1847, bank_account_number: 5241-9204-5241-1847]
[id: 4, last_name: Shevchenko, first_name: Taras, middle_name: Grigorovich, address: 82 Tunnel Court Bear, DE 19701, credit_card_number: 8206-7821-4928, bank_account_number: 8206-8206-7821-4928]\n"){
      puts @@shop.list_with_card_number_in_range("4243-9722-322-6096-0202", "9206-8206-7821-4928")
    }
  end

end
