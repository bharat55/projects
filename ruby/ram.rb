class MiniStatement
  def initialize(customer, type, amount)
    @customer = customer
    @type = type
    @current_balance= customer.balance
    @amount = amount
    @created_at = Time.now
  end

  def print_statment
    "#{@customer.account_no} is #{@type} by #{@amount}. Now your balance is #{@current_balance}"
  end
end

class Bank
  @@customers = []
  @@balance = 0
  @@bank_details = []

  def initialize(ifsc_code:, branch_name:, contact_no:)
    @ifsc_code = ifsc_code
    @branch_name = branch_name
    @contact_no = contact_no
    @bank_id = "bank-id-#{rand(10000000)}"
    @customers = []
    @total_balance = 0
    @total_customer = 0

    @@bank_details.push(self)
  end

  def print_bank_detail
    puts  "#{@ifsc_code} #{@branch_name} #{@contact_no} customers count #{@customers.size}"
  end

  def self.customers
    @@customers
  end

  def self.customers_count
    @@customers.length
  end

  def self.total_fund
    @@balance
  end

  def self.bank_details
    @@bank_details.each do |b|
      b.print_bank_detail
    end
    nil
  end

  # def initialize(opts)
  #   @ifsc_code = opts[:ifsc_code]
  #   @branch_name = opts[:branch_name]
  #   @contact_no = opts[:contact_no]
  # end

  def add_customer(customer, opening_amount=0)
    @customers.push(customer)
    customer.account_no = "customer-id-#{rand(10000000)}"
    customer.balance = opening_amount
    customer.account_no
    @total_customer += 1
    @@customers.push(customer)
    @@balance += opening_amount

    statement = MiniStatement.new(customer, 'cr', opening_amount)
    customer.statements.push(statement)
    customer.account_no
  end

  def latest_statements(account_no)
    customer = find_customer(account_no)
    customer.statements[0..10].each{|s| puts s.print_statment}
    nil
  end

  def filter_customers
    @customers.select do |customer|
      yield customer
    end
  end

  def print_customer_detail(account_no)
    customer = find_customer(account_no)
    customer.print_customer_detail
  end

  def deposit(account_no, amount)
    if amount > 0
      customer = find_customer(account_no)
      customer.balance += amount
      @total_balance += amount
      @@balance += amount
      statement = MiniStatement.new(customer, 'cr', amount)
      customer.statements.push(statement)
    else
      raise "Invalid amount provided to deposit for account #{account_no} and amount #{amount}"
    end
  end

  def total_balance_of_all_customers
    #@customers.inject(0){|sum, customer| sum+=customer.balance }
    @total_balance
  end

  def all_customer_count
    @total_customer
  end

  private
  def find_customer(account_no)
    filter_customers{|c| c.account_no == account_no }.first
  end
end

class AxisBank < Bank
end

class IndiaBank < Bank
end

class Customer
  attr_accessor :account_no, :balance, :statements

  def initialize(name, contact_no)
    @name = name
    @contact_no = contact_no
    @account_no = nil
    @balance = 0
    @statements = []
  end
  def to_s
    "Name :#{@name} Account_no. :#{@account_no}"
  end

  def print_customer_detail
    puts "customer info goes here...."
  end
end

axis_bank_opts = {ifsc_code: 'axix123', branch_name: "Indore", contact_no: 12345678}
axis_bank = AxisBank.new(axis_bank_opts)
india_bank = IndiaBank.new(ifsc_code: 'india123', branch_name: "Indore", contact_no: 12345678)

customer1 = Customer.new('A', 0)
customer2 = Customer.new('B', 1)
customer3 = Customer.new('C', 2)
customer4 = Customer.new('D', 3)
customer5 = Customer.new('E', 4)
customer6 = Customer.new('E', 5)
customer7 = Customer.new('F', 6)
customer8 = Customer.new('F', 7)
customer9 = Customer.new('Z', 8)
customer10 = Customer.new('P', 9)
customer11 = Customer.new('Q', 10)


account_no1 = axis_bank.add_customer(customer1, 1000)
account_no2 = axis_bank.add_customer(customer2, 2000)
account_no3 = axis_bank.add_customer(customer3, 3000)
axis_bank.add_customer(customer4, 1000)
axis_bank.add_customer(customer5, 3000)
axis_bank.add_customer(customer6, 5000)

account_no7 = india_bank.add_customer(customer7, 8000)
india_bank.add_customer(customer8, 10000)
india_bank.add_customer(customer9, 7000)


puts "account_no1 #{account_no1}"
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
axis_bank.deposit(account_no1, 1000)
india_bank.deposit(account_no7,5000)




customers = axis_bank.filter_customers {|c| c.balance >600 }
puts customers

# puts axis_bank.total_balance_of_all_customers


# axis_bank.latest_statements(account_no1)


# puts Bank.bank_details

# axis_bank.print_bank_detail
