describe Vldt::Common do
  describe "#absent" do
    let(:v) { Vldt::Common.absent }

    it "should succeed if the object is nil" do
      expect(v.validate(nil)).to eq nil
    end

    it "should fail if the object is not nil" do
      expect(v.validate(true)).to eq({ [] => [[:absent, {}]] })
    end
  end
end