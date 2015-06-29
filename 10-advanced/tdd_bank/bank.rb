class Bank
  attr_reader :name, :accounts

  def initialize(name)
    @accounts = {}
    @errors = []
    @name = name
  end

  def create_account(name, starting_deposit)
    @accounts[name] = starting_deposit
  end

  def deposit(name, amount)
    @accounts[name] += amount
  end

  def balance(name)
    @accounts[name]
  end

  def withdraw(name, amount)
    @accounts[name] -= amount if amount <= @accounts[name]
  end

end
