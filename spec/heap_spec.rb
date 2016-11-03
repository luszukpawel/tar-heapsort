
require 'simplecov'
SimpleCov.start

require 'heap'


RSpec.describe 'heap.rb' do
  describe '#heapsort' do
  it '#heapsort is defined' do
    expect { heapsort([3, 2, 1]) }.not_to raise_error
  end
end

  it 'sorting does not loses any data' do
    #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
    expect(heapsort([3, 2, 1])).to contain_exactly(1, 3, 2)
  end

  it 'sorting correctly' do
    #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
    expect(heapsort([3, 2, 1])).to eq([1, 2, 3])
  end

  it '#maxheapify is defined' do
    expect { maxheapify([5, 100, 200, -7], 4, 1) }.not_to raise_error
  end

  it '#maxheapify is working correctly' do
    #todo
  end

  it '#heapsort_dec is defined' do
    expect { heapsort_dec([3, 2, 1]) }.not_to raise_error
  end

  it 'heapsort_dec does not loses any data' do
    #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
    expect(heapsort_dec([3, 2, 1])).to contain_exactly(1, 3, 2)
  end

  it 'heapsort_dec sorting correctly' do
    #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
    expect(heapsort_dec([3, 2, 1, 5])).to eq([5, 3, 2, 1])
  end

  it 'abc ?' do
    #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
    expect(heapsort(["b", 'c', 'g'])).to contain_exactly("b", 'c', 'g')
  end

  it '#getmaxvalue is defined' do
    expect { getmaxvalue([5, 100, 200, -7]) }.not_to raise_error
  end

  it 'getmaxvalue is working correctly'  do
  expect(getmaxvalue( [5, 100, 200])).to eq(200)
end

  it '#removefromlist is defined' do
    expect { removefromlist([5, 100, 200, -7], 2) }.not_to raise_error
  end

  it 'removefromlist is working correctly' do
    expect(removefromlist([5, 100, 200, -7], 200) ).to eq([5, 100, -7])
  end

  it 'addtolist is defined' do

  end

  it 'addtolist is is working correctly' do
  end


  it 'empty? is defined' do
  end

  it 'empty? is working correctly' do
  end

  it 'get_size is defined' do
  end

  it 'get_size is working correctly' do
  end


end
