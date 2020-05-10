require 'camel'

describe '#to_camel_case' do


  it 'throws an ArgumentError when given more than 1 argument' do
    camel_object = lambda { to_camel_case("a","b") }
    expect(camel_object).to raise_error(ArgumentError)
  end

  it 'throws return an ArgumentError when given 0 arguments' do
    camel_object = lambda { to_camel_case() }
    expect(camel_object).to raise_error(ArgumentError)
  end

  it "returns 'aB' when given 'ab'" do
    expect(to_camel_case("ab")).to eq "aB"
  end
end
