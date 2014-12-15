require './lib/super_inject'

describe Array do

  array = [1, 2, 3, 4, 5]

  it 'should return the sum of an array of numbers when an addition bloc is passed in' do
    expect(array.super_inject{|x, y| x + y }).to eq 15
  end

  it 'should return the difference of an array of numbers when a subtraction bloc is passed in' do
    expect(array.super_inject{|x, y| x - y }).to eq(-13)
  end

  it 'should return the product of an array of numbers when a multiplication bloc is passed in' do
    expect(array.super_inject{|x, y| x * y }).to eq(120)
  end

  it 'should return the product of an array of numbers when an arbitrary operation is passed in' do
    expect(array.super_inject{|x, y| x*2 + 15 + y ** 2}).to eq 366
  end

  it 'should permit a starting accumulator to be passed into an addition bloc' do
    expect(array.super_inject(5){|x, y| x + y }).to eq 20
  end

end