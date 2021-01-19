require_relative '../lib/caesar_cipher'

describe "encyption" do
  it "check for lowercase letters" do
    expect(caesar_cipher("hello dear ones",3)).to eq("khoor ghdu rqhv")
  end

  it "check for uppercase  letters" do
    expect(caesar_cipher("WOULD YOU SHUT UP, PLEASE !",8)).to eq("EWCTL GWC APCB CX, XTMIAM !")
  end

  it "check for final letters" do
    expect(caesar_cipher("ZZZ zzz XXX xxx",5)).to eq("EEE eee CCC ccc")
  end
end
