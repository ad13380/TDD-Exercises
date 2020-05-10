require 'unique'

describe '#unique_in_order' do

  it "throws an ArgumentError when given more than 1 argument" do
    unique_object = lambda { unique_in_order(1,2,3) }
    expect(unique_object).to raise_error(ArgumentError)
  end

  it "returns ['A','B','C'] when given 'ABC'" do
    expect(unique_in_order('ABC')).to eq ['A','B','C']
  end

  it "returns ['A','B','C'] when given 'AABC'" do
    expect(unique_in_order('AABC')).to eq ['A','B','C']
  end

  it "returns ['A', 'B', 'C', 'D', 'A', 'B'] when given 'AAAABBBCCDAABBB'" do
    expect(unique_in_order('AAAABBBCCDAABBB')).to eq ['A', 'B', 'C', 'D', 'A', 'B']
  end

  it "returns ['A', 'B', 'C', 'c', 'A', 'D'] when given 'ABBCcAD'" do
    expect(unique_in_order('ABBCcAD')).to eq ['A', 'B', 'C', 'c', 'A', 'D']
  end

  it "returns [1,2,3] when given [1,2,2,3,3]" do
    expect(unique_in_order([1,2,2,3,3])).to eq [1,2,3]
  end


end
