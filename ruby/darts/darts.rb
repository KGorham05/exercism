# Write a method that returns the earned points in a single toss of a Darts game.

# Darts is a game where players throw darts to a target.

# In our particular instance of the game, the target rewards with 4 different amounts of points, depending on where the dart lands.

# Write a method that, given a point in the target (defined by its real Cartesian coordinates x and y), returns the correct amount earned by a dart landing in that point.

class Darts
   def intialize(x, y)
    @x, @y = x, y
   end

   def distance
      @distance = Math.sqrt((@x**2) + (@y**2))
   end
   def score
      # If the dart lands:
      if @distance <= 10 && @distance > 5
         # in the outer circle of the target: 1 point.
         points = 1
      elsif @distance > 1 && @distance <= 5
         # in the middle circle of the target: 5 points.
         points = 5
      # in the inner circle of the target: 10 points.
      elsif @distance <= 1
         points = 10
      # outside the target: 0 points.
      else 
         points = 0
      end
      return points
   end   
end



# The outer circle has a radius of 10 units (This is equivalent to the total radius for the entire target), the middle circle a radius of 5 units, and the inner circle a radius of 1. They are all centered to the same point (That is, the circles are concentric) defined by the coordinates (0, 0).
