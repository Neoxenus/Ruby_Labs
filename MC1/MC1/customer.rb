class Customer
  attr_accessor :last_name, :first_name, :middle_name, :address, :credit_card_number, :bank_account_number
  attr_reader :id
  @@next_id = 0
  def to_s
    "[id: #{id}, last_name: #{last_name}, first_name: #{first_name}, middle_name: #{middle_name}, "<<
      "address: #{address}, credit_card_number: #{credit_card_number}, bank_account_number: #{bank_account_number}]"
  end


  def initialize(last_name, first_name, middle_name = "", address = "", credit_card_number = "", bank_account_number = "")
    initialize_id
    @last_name = last_name
    @first_name = first_name
    @middle_name = middle_name
    @address = address
    @credit_card_number = credit_card_number
    @bank_account_number = bank_account_number
  end

  private
  def initialize_id
    @id = @@next_id
    @@next_id += 1
  end
end
