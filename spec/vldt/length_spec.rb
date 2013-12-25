describe Vldt::Length do
  let(:v) { Vldt::Length.new(2) }

  it "should fail if the object is not of the required length" do
    expect(v.validate("")).to eq({ [] => [[:length, { value: 2 }]] })
  end

  it "should succeed if the object is of the required length" do
    expect(v.validate([0, 3])).to eq nil
  end
end