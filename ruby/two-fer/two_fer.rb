=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/two-fer` directory.
=end

# Two-fer or 2-fer is short for two for one. One for you and one for me.

# "One for X, one for me."
# When X is a name or "you".

# If the given name is "Alice", the result should be "One for Alice, one for me." If no name is given, the result should be "One for you, one for me."

class TwoFer
  def self.two_fer(name = "you")
    "One for #{name}, one for me."
  end   
end