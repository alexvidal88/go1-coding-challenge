require_relative "../quiz-results/quiz-results.rb"

inputs = [
    [["A", "B", "C"], [
        ["A", "B", "B"],
        ["C", "B", "C"],
        ["A", "B", "C"],
        ["B", "B", "A"],
        ["A", "B", "C"]
    ]],
    [["A", "B", "A", "C", "D"], [
        ["A", "B", "B", "C", "D"],
        ["C", "B", "A", "D", "B"],
        ["A", "B", "C", "D", "C"],
        ["B", "B", "A", "D", "A"],
        ["A", "B", "D", "D", "D"]
    ]],
    [["A", "B", "A", "C", "D"],[
        ["A", "B", "B", "C", "D"],
        ["C", "B", "A", "D", "B"],
        ["A", "B", "C", "D", "C"],
        ["B", "B", "A", "D", "A"],
        ["A", "B", "D", "B", "D"],
        ["C", "A", "A", "D", "A"],
        ["A", "B", "C", "D", "C"],
        ["B", "D", "A", "A", "A"],
        ["A", "B", "D", "D", "D"],
        ["C", "B", "A", "D", "B"],
        ["A", "C", "C", "D", "A"],
        ["B", "B", "A", "D", "A"],
        ["A", "B", "D", "C", "D"]
    ]]
]

RSpec.describe "quiz-results tests:" do
    it "quiz-results test 1" do 
        expect(quiz_results(inputs[0][0], inputs[0][1])).to eq("The easiest question is index 1")
    end

    it "quiz-results test 2" do 
        expect(quiz_results(inputs[1][0], inputs[1][1])).to eq("The easiest question is index 1")
    end

    it "quiz-results test 3" do 
        expect(quiz_results(inputs[2][0], inputs[2][1])).to eq("The easiest question is index 1")
    end
    
end