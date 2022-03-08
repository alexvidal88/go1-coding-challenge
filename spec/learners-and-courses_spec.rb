require_relative "../learners-and-courses/learners-and-courses.rb"

inputs = [
{
  "Learner-0001": [
    "Course-0001"
  ],
  "Learner-0002": [
    "Course-0002"
  ],
  "Learner-0003": [
    "Course-0003"
  ],
  "Learner-0004": [
    "Course-0004"
  ]
},
{
  "Learner-0001": [
    "Course-0001",
    "Course-0002",
    "Course-0003"
  ],
  "Learner-0002": [
    "Course-0002",
    "Course-0003",
    "Course-0004"
  ]
},
{
  "Learner-0001": [
    "Course-0001",
    "Course-0002",
    "Course-0003"
  ]
},
{
  "Learner-0001": [
    "Course-0001",
    "Course-0002",
    "Course-0003",
    "Course-0001",
    "Course-0002",
    "Course-0003",
  ],
  "Learner-0002": [
    "Course-0002",
    "Course-0003",
    "Course-0004"
  ]
},
{
  "Learner-0001": [
    "Course-0001",
    "Course-0002",
    "Course-0003"
  ],
  "Learner-0002": [
    "Course-0002",
    "Course-0003",
    "Course-0004"
  ],
  "Learner-0003": [
    "Course-0004",
    "Course-0005",
    "Course-0006"
  ],
  "Learner-0004": [
    "Course-0005",
    "Course-0006",
    "Course-0007"
  ]
}
]


RSpec.describe "learners-and-courses tests:" do 
  it "learners and courses test 1" do
      expect(learners_courses(inputs[0])).to eq(["Course-0001", "Course-0002", "Course-0003", "Course-0004"])
  end

  it "learners and courses test 2" do
    expect(learners_courses(inputs[1])).to eq(["Course-0001", "Course-0004"])
  end

  it "learners and courses test 3" do
    expect(learners_courses(inputs[2])).to eq(["Course-0001", "Course-0002", "Course-0003"])
  end

  it "learners and courses test 4" do
    expect(learners_courses(inputs[3])).to eq(["Course-0001", "Course-0004"])
  end

  it "learners and courses test 5" do
    expect(learners_courses(inputs[4])).to eq(["Course-0001", "Course-0007"])
  end
end