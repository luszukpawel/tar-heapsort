
require 'simplecov'
SimpleCov.start

require 'heap'

RSpec.describe 'heap.rb' do
  it '#heapsort is defined' do
    expect { heapsort([3, 2, 1]) }.not_to raise_error
  end

  it 'sorts correctly' do
  #  expect([1, 2, 3]).to     match_array([3, 2, 1])
    expect { heapsort([3, 2, 1]) }.to eq([1, 2, 3])
  end
  # tutaj wpisac pozostale testy
end
