require_relative '../bank'

describe Bank do
  let(:bank) { Bank.new('TDD Bank') }

  describe '.new' do
    it 'creates a new Bank object' do
      expect(bank).to_not eq nil
    end

    it 'has a name' do
      expect(bank.name).to eq 'TDD Bank'
    end

    it 'has no accounts' do
      expect(bank.accounts.count).to eq 0
    end
  end

  describe '#create_account' do
    it 'creates an account' do
      bank.create_account('Jonesy', 200)
      expect(bank.accounts['Jonesy']).to eq 200
    end
  end

  describe '#deposit' do
    it 'deposits money from client into their account' do
      bank.create_account('Jonesy', 200)
      bank.deposit('Jonesy', 300)
      expect(bank.balance('Jonesy')).to eq 200 + 300
    end
  end

  describe '#balance' do
    it 'returns the balance for the given account' do
      bank.create_account('Jonesy', 200)
      expect(bank.balance('Jonesy')).to eq 200
    end
  end

  describe '#withdraw' do
    it 'deducts money from the given account' do
      bank.create_account('Jonesy', 200)
      bank.withdraw('Jonesy', 100)
      expect(bank.balance('Jonesy')).to eq 200 - 100
    end

    it 'prevents withdrawals that exceed the balance' do
      bank.create_account('Jonesy', 1)
      bank.withdraw('Jonesy', 1_000_000)
      expect(bank.balance('Jonesy')).to eq 1
    end
  end
end










