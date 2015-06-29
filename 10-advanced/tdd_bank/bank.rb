class Bank
  attr_reader :name, :accounts

  def initialize(name)
    @accounts = {}
    @name = name
  end

  def create_account(name, starting_deposit)
    @accounts[name] = starting_deposit
  end

end
