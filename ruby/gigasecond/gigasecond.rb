=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

# Calculate the moment when someone has lived for 10^9 seconds.
# A gigasecond is 10^9 (1,000,000,000) seconds.

class Gigasecond
   def self.from(start_time)
      return start_time + 1000000000
   end
end

