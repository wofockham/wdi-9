require 'rails_helper'

RSpec.describe Shelf, :type => :model do
  it { should have_many :fruits }
end
