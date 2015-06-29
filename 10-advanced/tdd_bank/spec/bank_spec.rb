require_relative '../bank'

describe Bank do
  describe '.new' do
    it 'creates a new Bank object' do
      bank = Bank.new('TDD Bank')
      expect(bank).to_not eq nil
    end

    it 'has a name' do
      bank = Bank.new('TDD Bank')
      expect(bank.name).to eq 'TDD Bank'
    end
  end
end
