require_relative "../concurrent-learners/concurrent-learners.rb"

inputs = [
    [
    ["User_001", 0, 1000],
    ["User_002", 500, 2000]
],
[
    ["User_001", 0, 1000],
    ["User_002", 500, 2000],
    ["User_003", 2500, 3000],
    ["User_004", 400, 1400]
],
[
    ["User_001", 0, 1000],
    ["User_002", 500, 2000],
    ["User_003", 2500, 3000],
    ["User_004", 400, 1400],
    ["User_001", 1100, 1800],
    ["User_005", 1200, 1400],
    ["User_006", 500, 2400],
    ["User_003", 2100, 2300]
    
],
[
    ["User_001", 0, 1000],
    ["User_002", 500, 2000],
    ["User_003", 2500, 3000],
    ["User_001", 1100, 1800],
    ["User_002", 600, 2400],
    ["User_002", 700, 1800]
]
]

RSpec.describe "concurrent learners tests" do 
    it "concurrent learners test 1" do
        expect(concurrent_learners(inputs[0])).to eq("The maximum number of concurrent streams is 2.") 
    end

    it "concurrent learners test 2" do
        expect(concurrent_learners(inputs[1])).to eq("The maximum number of concurrent streams is 3.") 
    end

    it "concurrent learners test 3" do
        expect(concurrent_learners(inputs[2])).to eq("The maximum number of concurrent streams is 7.") 
    end

    it "concurrent learners test 4" do
        expect(concurrent_learners(inputs[3])).to eq("The maximum number of concurrent streams is 5.") 
    end
end