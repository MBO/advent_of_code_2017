require "minitest/autorun"
require "./day_02"

variant_1_test_data = [
  { input: "5 1 9 5\n7 5 3\n2 4 6 8", expected: 18, description: "produces 18" },
]
variant_2_test_data = [
  { input: "5 9 2 8\n9 4 7 3\n3 8 6 5", expected: 9, description: "produces 9:" },
  { input: "2 3 4", expected: 2, description: "produces 2 from 4 / 2" },
  { input: "2 3 5 9", expected: 3, description: "produces 3 from 9 / 3" },
  { input: "2 3 4\n2 3 5 9", expected: 5, description: "produces 8 from 4 / 2 + 9 / 3" }
]

describe "Day 02" do
  describe "variant 1" do
    variant_1_test_data.each do |test_data|
      it "#{test_data[:input]} #{test_data[:description]}" do
        assert_equal test_data[:expected], Day02.variant_1(test_data[:input])
      end
    end
  end

  describe "variant 2" do
    variant_2_test_data.each do |test_data|
      it "#{test_data[:input]} #{test_data[:description]}" do
        assert_equal test_data[:expected], Day02.variant_2(test_data[:input])
      end
    end
  end
end