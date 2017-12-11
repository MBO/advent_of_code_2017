require "minitest/autorun"
require "./day_01"
require "./day_01_zip"

variant_1_test_data = [
  { input: "1234", expected: 0, description: "produces 0 because no digit matches the next" },
  { input: "112", expected: 1, description: "produces sum of 1 because only 1st digit matches 2nd" },
  { input: "1122", expected: 3, description: "produces sum of 3 (1 + 2) because 1st matches 2nd and 3rd matched 4th" },
  { input: "12341", expected: 1, description: "produces sum of 1 because last digit matches first" },
  { input: "11", expected: 2, description: "produces sum of 2 because 1st matches 2nd, and last matches first" }
]
variant_2_test_data = [
  { input: "1212", expected: 6, description: "produces 6: the list contains 4 items, and all four digits match the digit 2 items ahead" },
  { input: "1221", expected: 0, description: "produces 0, because every comparison is between a 1 and a 2" },
  { input: "123425", expected: 4, description: "produces 4, because both 2s match each other, but no other digit has a match" },
  { input: "123123", expected: 12, description: "produces 12" },
  { input: "12131415", expected: 4, description: "produces 4" },
]

describe "Day 01" do
  describe "variant 1" do
    variant_1_test_data.each do |test_data|
      it "#{test_data[:input]} #{test_data[:description]}" do
        assert_equal test_data[:expected], Day01.variant_1(test_data[:input])
        assert_equal test_data[:expected], Day01Zip.variant_1(test_data[:input])
      end
    end
  end

  describe "variant 2" do
    variant_2_test_data.each do |test_data|
      it "#{test_data[:input]} #{test_data[:description]}" do
        assert_equal test_data[:expected], Day01.variant_2(test_data[:input])
        assert_equal test_data[:expected], Day01Zip.variant_2(test_data[:input])
      end
    end
  end
end