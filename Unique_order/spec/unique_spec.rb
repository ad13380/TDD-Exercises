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


end
