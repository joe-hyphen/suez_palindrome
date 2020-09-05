require "test_helper"

class SuezPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_palindrome
    assert 1234321.palindrome?
  end

  def test_integer_non_palindrome
    refute 123456.palindrome?
  end

  def test_whitespace_non_palindrome
    refute "".palindrome?
    refute "      ".palindrome?
    refute "\t\n\t".palindrome?
  end
end
