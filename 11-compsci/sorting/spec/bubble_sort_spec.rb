require_relative '../bubble_sort'

describe 'bubble_sort()' do

  it 'should not choke on an empty array' do
    expect( bubble_sort([]) ).to eq([])
  end

  it 'should be cool with some duplicate values' do
    expect( bubble_sort([2, 1, 1, 1, 3])).to eq([1, 1, 1, 2, 3])
  end

  it 'should return an already sorted array in the same order' do
    expect( bubble_sort([1, 2, 3])).to eq([1, 2, 3])
  end

  it 'should sort a small array in numeric order' do
    expect( bubble_sort([3, 2, 1]) ).to eq([1, 2, 3])
  end

  it 'should correctly sort a larger array' do
    larger_input = (1..5000).to_a.shuffle
    expect( bubble_sort(larger_input) ).to eq((1..5000).to_a)
  end

end
