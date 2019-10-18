class MiniStatement
  attr_accessor :account_number, :type, :time, :amount
  def initialize(account_number,type,amount)
    @account_number = account_number
    @type = type
    @time = Time.now
    @amount = amount
  end

end




class Bank
  def initialize(branch_name,city)
    @branch_name = branch_name
    @city = city
    @customer = []
    @total_balance =nil
  end


  def add_customers(new_customer,initial_balance)
    if new_customer.balance != nil
       object = Customer.new(new_customer.name,new_customer.contact_number)
       object.balance = initial_balance
       @customer.push(object)
       object.account_number = rand(100000000)
    else
      @customer.push(new_customer)
      new_customer.balance = initial_balance
      new_customer.account_number = rand(100000000)
    end
  end

  def deposit(account_number,deposit_money)
    cus = find_customer(account_number)
    puts "Old Balance = #{cus.balance}"
    cus.balance += deposit_money
    puts "New Balance = #{cus.balance}"
    statement = MiniStatement.new(account_number,'cr',deposit_money)
    cus.statements.push(statement)
    puts "#{account_number} is credited by #{deposit_money} on #{Time.now}"

  end
  def find_customer(r_account_number)
    @customer.select{|search| search.account_number == r_account_number}.first
  end

  def print_customers
    @customer.each do |customer|
      puts "name = #{customer.name} contact_number = #{customer.contact_number} available balance = #{customer.balance}
        "
    end
  end
  def filter_customer
    @customer.select do |i|
      yield i
    end
  end


  def mini_statements(obj)
    obj.statements[0..9].each do |value|
       puts " #{value.account_number}   is   #{value.type} on #{value.time} by #{value.amount}"
     end
  end



end





  class AxisBank < Bank
  end



  class IndiaBank < Bank
  end




  class Customer
    attr_accessor :balance, :name, :contact_number, :account_number, :statements
    def initialize(name,contact_number)
      @name = name
      @contact_number = contact_number
      @account_number = nil
      @statements = []
      @balance = nil
    end
  end



   axis_bank = AxisBank.new("Axis123","Indore")
   india_bank  = IndiaBank.new("India123","Nalkheda")

  customer1 = Customer.new("bharat",8959278627)
  customer2 = Customer.new("Ashvin",9859278627)
  customer3 = Customer.new("Harish",7859278627)
  customer4 = Customer.new("Ajay",8120921918)
  customer5 = Customer.new("Durgesh",8759278627)


  account_number1 = axis_bank.add_customers(customer1,0)
  account_number2 = axis_bank.add_customers(customer2,2000)
  account_number3 = axis_bank.add_customers(customer3,3000)
  account_number4 = india_bank.add_customers(customer4,4000)
  account_number5 = india_bank.add_customers(customer5,5000)
  account_number6 = india_bank.add_customers(customer1,11000)
  account_number7 = india_bank.add_customers(customer2,22000)


  axis_bank.deposit(account_number1,1)
  axis_bank.deposit(account_number1,11)
  axis_bank.deposit(account_number1,111)
  axis_bank.deposit(account_number1,100)
  axis_bank.deposit(account_number1,1109)
  axis_bank.deposit(account_number1,1109)
  axis_bank.deposit(account_number1,1110987)
  axis_bank.deposit(account_number1,11)
  axis_bank.deposit(account_number1,111)


 #  india_bank.deposit(account_number6,11)


 #  axis_bank.print_customers
 #  india_bank.print_customers


 #  axis_bank.deposit(account_number1,1)

 # customers =  india_bank.filter_customer {|obj| obj.balance < 6000}
 # puts customers.inspect







  # puts "account_number1 = #{account_number1}"
  # puts "account_number6 = #{account_number6}"
  # puts account_number1.object_id
  # puts account_number6.object_id

  axis_bank.mini_statements(customer1)







class MiniStatement
  attr_accessor :account_number, :type, :time, :amount
  def initialize(account_number,type,amount)
    @account_number = account_number
    @type = type
    @time = Time.now
    @amount = amount
  end

end




class Bank
  def initialize(branch_name,city)
    @branch_name = branch_name
    @city = city
    @customer = []
    @total_balance =nil
  end


  def add_customers(new_customer,initial_balance)
    if new_customer.balance != nil
       object = Customer.new(new_customer.name,new_customer.contact_number)
       object.balance = initial_balance
       @customer.push(object)
       object.account_number = rand(100000000)
    else
      @customer.push(new_customer)
      new_customer.balance = initial_balance
      new_customer.account_number = rand(100000000)
    end
  end

  def deposit(account_number,deposit_money)
    cus = find_customer(account_number)
    puts "Old Balance = #{cus.balance}"
    cus.balance += deposit_money
    puts "New Balance = #{cus.balance}"
    statement = MiniStatement.new(account_number,'cr',deposit_money)
    cus.statements.push(statement)
    puts "#{account_number} is credited by #{deposit_money} on #{Time.now}"

  end
  def find_customer(r_account_number)
    @customer.select{|search| search.account_number == r_account_number}.first
  end

  def print_customers
    @customer.each do |customer|
      puts "name = #{customer.name} contact_number = #{customer.contact_number} available balance = #{customer.balance}
        "
    end
  end
  def filter_customer
    @customer.select do |i|
      yield i
    end
  end


  def mini_statements(obj)
    obj.statements[0..9].each do |value|
       puts " #{value.account_number}   is   #{value.type} on #{value.time} by #{value.amount}"
     end
  end



end





  class AxisBank < Bank
  end



  class IndiaBank < Bank
  end




  class Customer
    attr_accessor :balance, :name, :contact_number, :account_number, :statements
    def initialize(name,contact_number)
      @name = name
      @contact_number = contact_number
      @account_number = nil
      @statements = []
      @balance = nil
    end
  end



   axis_bank = AxisBank.new("Axis123","Indore")
   india_bank  = IndiaBank.new("India123","Nalkheda")

  customer1 = Customer.new("bharat",8959278627)
  customer2 = Customer.new("Ashvin",9859278627)
  customer3 = Customer.new("Harish",7859278627)
  customer4 = Customer.new("Ajay",8120921918)
  customer5 = Customer.new("Durgesh",8759278627)


  account_number1 = axis_bank.add_customers(customer1,0)
  account_number2 = axis_bank.add_customers(customer2,2000)
  account_number3 = axis_bank.add_customers(customer3,3000)
  account_number4 = india_bank.add_customers(customer4,4000)
  account_number5 = india_bank.add_customers(customer5,5000)
  account_number6 = india_bank.add_customers(customer1,11000)
  account_number7 = india_bank.add_customers(customer2,22000)


  axis_bank.deposit(account_number1,1)
  axis_bank.deposit(account_number1,11)
  axis_bank.deposit(account_number1,111)
  axis_bank.deposit(account_number1,100)
  axis_bank.deposit(account_number1,1109)
  axis_bank.deposit(account_number1,1109)
  axis_bank.deposit(account_number1,1110987)
  axis_bank.deposit(account_number1,11)
  axis_bank.deposit(account_number1,111)


 #  india_bank.deposit(account_number6,11)


 #  axis_bank.print_customers
 #  india_bank.print_customers


 #  axis_bank.deposit(account_number1,1)

 # customers =  india_bank.filter_customer {|obj| obj.balance < 6000}
 # puts customers.inspect







  # puts "account_number1 = #{account_number1}"
  # puts "account_number6 = #{account_number6}"
  # puts account_number1.object_id
  # puts account_number6.object_id

  axis_bank.mini_statements(customer1)







