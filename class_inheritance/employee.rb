require "byebug"

class Employee
    attr_reader :salary
    def initialize(name, title, salary, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end