require File.join(File.dirname(__FILE__), "helper")

describe Range do
  describe "to_json()" do
    it "should convert 0..55 to json" do
      hash = JSON.parse((0..55).to_json)
      hash.should == {"javaClass" => "com.google.wave.api.Range", "start" => 0, "end" => 55}
    end

    it "should convert 1...4 to json" do
      hash = JSON.parse((1...4).to_json)
      hash.should == {"javaClass"  => "com.google.wave.api.Range", "start" => 1, "end" => 3}
    end
  end
end