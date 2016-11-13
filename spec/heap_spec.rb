require 'simplecov'
SimpleCov.start

require 'heap'

RSpec.describe 'heap.rb' do
  describe '#heapsort' do
    it '#heapsort is defined' do
      expect { heapsort([3, 2, 1]) }.not_to raise_error
      expect { heapsort((1..500_000).map { rand }) }.not_to raise_error
    end

    it 'sorting does not loses any data' do
      expect(heapsort([3, 2, 1])).to contain_exactly(1, 3, 2)
    end

    it 'sorting correctly' do
      #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
      expect(heapsort([3, 2, 1])).to eq([1, 2, 3])
      expect(heapsort([10, 40, 3, 2, 1, 3])).to eq([1, 2, 3, 3, 10, 40])
    end

    it '#maxheapify is defined' do
      expect { maxheapify([5, 100, 200, -7], 4, 1) }.not_to raise_error
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

    it 'sorting working in strings' do
      #  expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
      expect(heapsort(%w(lorem ipsum dolor sit amet))).to eq(%w(amet dolor ipsum lorem sit))
    end

    it 'getmaxvalue is defined' do
      expect { getmaxvalue([5, 100, 200, -7]) }.not_to raise_error
    end

    it 'getmaxvalue of int is int ' do
      expect { getmaxvalue([5, 100, 200, -7]).to be_a_kind_of(integer) }
    end

    it 'getmaxvalue is working correctly' do
      expect(getmaxvalue([5, 100, 200])).to eq(200)
    end

    it 'removefromlist is defined' do
      expect { removefromlist([5, 100, 200, -7], 2) }.not_to raise_error
    end

    it 'removefromlist is working correctly' do
      expect(removefromlist([5, 100, 200, -7], 200)).to eq([5, 100, -7])
    end

    it 'empty? is defined' do
      expect { empty?([5, 10]) }.not_to raise_error
    end

    it 'empty? is returning correct type' do
      expect { empty?([5, 100, 200, -7]).to be_a_kind_of(Boolean) }
    end

    it 'empty? is working correctly' do
      expect(empty?([5, 10])).to eq(false)
    end

    it 'get_size is defined' do
      expect { get_size([5, 10]) }.not_to raise_error
    end

    it 'get_size is working correctly' do
      expect(get_size([5, 10])).to equal(2)
    end

    it 'get_size is returning correct type ' do
      expect { getmaxvalue([5, 100, 200, -7]).to be_a_kind_of(integer) }
    end
  end
end
