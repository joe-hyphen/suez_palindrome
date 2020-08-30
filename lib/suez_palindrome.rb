require "suez_palindrome/version"

module SuezPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    self.to_s.downcase.gsub(/[^a-z\d]/i, "")
  end
end


class String
  include SuezPalindrome
end

class Integer
  include SuezPalindrome
end
