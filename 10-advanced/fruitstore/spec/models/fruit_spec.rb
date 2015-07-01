# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

require 'rails_helper'

RSpec.describe Fruit, :type => :model do
  describe "An apple" do
    before do
      @apple = Apple.new :name => 'Golden Delicious'
    end

    it "should not be squishy" do
      expect(@apple.squishy?).to be false
      expect(@apple.squishy?).to eq false
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.new :name => 'Nazi'
    end

    it "should be kinda squishy" do
      expect(@pear.squishy?).to be true
      expect(@pear.squishy?).to eq true
    end
  end
end
