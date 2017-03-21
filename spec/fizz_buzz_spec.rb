require 'fizz_buzz'

describe 'fizz_buzz' do
  it 'retuns 1 if number is 1' do
    expect(fizz_buzz(1)).to eq 1
  end
  it 'returns fizz if number is divisible by  3' do
    expect(fizz_buzz(15)).to eq 'Fizz Buzz'
  end

  it 'returns Buzz if number is divisible by  5' do
    expect(fizz_buzz(5)).to eq 'Buzz'
  end

  it 'returns Fizz Buzz if number is divisible by  15' do
    expect(fizz_buzz(3)).to eq 'fizz'
  end
end
