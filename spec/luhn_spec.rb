require './luhn'
require 'byebug'

describe "Luhn" do
  it "should not be correct" do
    expect(valid('79927398710')).to be_falsey
    expect(valid('79927398711')).to be_falsey
    expect(valid('79927398712')).to be_falsey
    expect(valid('79927398714')).to be_falsey
    expect(valid('79927398715')).to be_falsey
    expect(valid('79927398716')).to be_falsey
    expect(valid('79927398717')).to be_falsey
    expect(valid('79927398718')).to be_falsey
    expect(valid('79927398719')).to be_falsey
  end

  it "should be correct" do
    expect(valid('79927398713')).to be_truthy
    expect(valid('4111111111111111')).to be_truthy
  end

  it "should return RuntimeError" do
    expect{valid('4111111111111111D')}.to raise_error(RuntimeError)
  end
end
