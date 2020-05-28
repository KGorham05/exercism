# Given a year, report if it is a leap year.

# A leap year occurs:

# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is

class Year
  def self.leap?(year) 
    year % 4 == 0 unless (year % 100 == 0 unless year % 400 == 0)   
  end
end
