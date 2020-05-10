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

  ["a-b","a_b"].each do |arg|
    it "removes dashes and underscores between words'" do
      expect(to_camel_case(arg)).to eq "aB"
    end
  end

  it "returns 'theStealthWarrior' when given 'the-stealth-warrior'" do
    expect(to_camel_case("the-stealth-warrior")).to eq "theStealthWarrior"
  end

  it "returns 'theStealthWarrior' when given 'the-stealth-warrior'" do
    expect(to_camel_case("The_Stealth_Warrior")).to eq "TheStealthWarrior"
  end
end
