require_relative '../bubble_sort'

describe 'bubble_sort()' do

  it 'should return an already sorted array in the same order' do
    expect( bubble_sort([1, 2, 3])).to eq([1, 2, 3])
  end

  it 'should sort a small array in numeric order' do
    expect( bubble_sort([3, 2, 1]) ).to eq([1, 2, 3])
  end

end
