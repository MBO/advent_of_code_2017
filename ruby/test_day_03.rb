require "minitest/autorun"
require "./day_03"

variant_1_test_data = [
  { input: "1", expected: 0, description: "it's at the access port" },
  { input: "12", expected: 3, description: "3 steps away,  down, left, left" },
  { input: "23", expected: 2, description: "2 stepa: up twice" },
  { input: "1024", expected: 31, description: "31 steps" }
]
variant_2_test_data = [
]

describe "Day 02" do
  describe "variant 1" do
    variant_1_test_data.each do |test_data|
      it "#{test_data[:input]} #{test_data[:description]}" do
        assert_equal test_data[:expected], Day03.variant_1(test_data[:input])
      end
    end
  end

  describe "variant 2" do
    variant_2_test_data.each do |test_data|
      it "#{test_data[:input]} #{test_data[:description]}" do
        assert_equal test_data[:expected], Day03.variant_2(test_data[:input])
      end
    end
  end
end