require_relative '../lib/multiples'

describe "is a mutiple of 3" do
  it "check for 6" do
    expect(multi_three(6)).to eq(true)
  end

  it "check for 8" do
    expect(multi_three(8)).to eq(false)
  end

  it "check for 567" do
    expect(multi_three(57)).to eq(true)
  end
end

describe "is a mutiple of 5" do
  it "check for 10" do
    expect(multi_five(10)).to eq(true)
  end

  it "check for 8" do
    expect(multi_five(8)).to eq(false)
  end

  it "check for 567" do
    expect(multi_five(567)).to eq(false)
  end
end