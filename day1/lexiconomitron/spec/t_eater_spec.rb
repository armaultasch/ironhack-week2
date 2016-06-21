require_relative ("../lib/t_eater.rb")

RSpec.describe Lexiconomitron do 
	let :lexi do
		Lexiconomitron.new
	end
	describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(lexi.eat_t("great scott!")).to eq("grea sco!")
  end
    end
    describe "#shazam" do
    it "reverses strings" do
      expect(lexi.shazam("great scott")).to eq(["aerg", "ocs"])
    	end
    end
    	describe "#oompa_loompa" do
    it "selects words  <= to 3 chars" do
      expect(lexi.oompa_loompa("if you wanna be my lover")).to eq(["if", "you", "be", "my"])
      expect(lexi.oompa_loompa("if you want to be my lover")).to eq(["if", "you", "wan", "o", "be", "my"])
    	end
  end
end