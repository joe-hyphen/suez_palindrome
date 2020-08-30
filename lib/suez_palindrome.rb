require "suez_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.downcase
    end
end
