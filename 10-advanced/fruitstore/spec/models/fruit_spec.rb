# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  type       :string
#

require 'rails_helper'

RSpec.describe Fruit, :type => :model do
  it { should belong_to :shelf }

  describe "An apple" do
    before do
      @apple = Apple.create :name => 'Golden Delicious'
    end

    # it "should not be squishy" do
    #   expect(@apple.squishy?).to be false
    #   expect(@apple.squishy?).to eq false
    # end

    it "should remember the class via Single Table Inheritance (STI)" do
      apple = Fruit.find(@apple.id)
      expect(apple.class).to eq Apple
      expect(apple).to eq @apple
      expect(apple.is_a?(Fruit)).to be true
      expect(apple.class.ancestors).to include Fruit
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.create :name => 'Nazi'
    end

    it "should be kinda squishy" do
      expect(@pear.squishy?).to be true
      expect(@pear.squishy?).to eq true
    end

    it "should remember the class via Single Table Inheritance (STI)" do
      pear = Fruit.find(@pear.id)
      expect(pear.class).to eq Pear
      expect(pear).to eq @pear
      expect(pear.is_a?(Fruit)).to be true
      expect(pear.class.ancestors).to include Fruit
    end
  end
end













