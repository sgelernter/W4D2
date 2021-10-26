require "byebug"

class Employee
    attr_reader :salary
    attr_accessor :boss
    def initialize(name, title, salary, boss = nil)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end