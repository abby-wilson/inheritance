class System

  attr_reader :bodies, :total_mass
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    sum = 0
    @bodies.each do |mass|
      total_mass == sum += body.mass
      return total_mass
    end
  end
end

class Body

attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body

  attr_reader :name, :mass, :day, :year

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end


class Star < Body

  attr_reader :name, :mass, :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end


class Moon < Body

  attr_reader :name, :mass, :month, :planet

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

end

earth = Planet.new("Earth", 100, 365, 1)
moon = Moon.new("The_Moon", 50, 30, earth)
# s = Star.new("The_Sun", "500_000_000")
# p @@bodies
milkyway = System.new
milkyway.add(earth)
milkyway.add(moon)
p milkyway.bodies
p milkyway.total_mass
