require 'alt_cap'

describe '#capitalize' do
  it "throws an ArgumentError when given more than 1 argument" do
    args = lambda { capitalize("a", "b") }
    expect(args).to raise_error(ArgumentError)
  end

  it "returns ['A','a'] when passed 'a'" do
    expect(capitalize('a')).to eq ['A','a']
  end

  it "returns ['Ab','aB'] when passed 'ab'" do
    expect(capitalize('ab')).to eq ['Ab','aB']
  end

  it "returns ['AbC','aBc'] when passed 'abc'" do
    expect(capitalize('abc')).to eq ['AbC','aBc']
  end

  it "returns ['CoDeWaRrIoRs','cOdEwArRiOrS'] when passed 'codewarriors'" do
    expect(capitalize('codewarriors')).to eq ['CoDeWaRrIoRs','cOdEwArRiOrS']
  end
end
