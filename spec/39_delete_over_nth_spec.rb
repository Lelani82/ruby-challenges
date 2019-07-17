require_relative "../39_delete_over_nth"

describe "should return array with all occurances of number deleted after nth occurance" do
  it "should return new array with double occurance (nth number)" do
      expect(delete_over_nth([1,1,1,2,2,2,2],2)).to eq([1,1,2,2])
  end
  it "should return new array with single occurance (nth number)" do
      expect(delete_over_nth([23,30,15,23,16],1)).to eq([23,30,15,16])
  end
end