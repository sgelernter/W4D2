require_relative "employee.rb"

class Manager < Employee

    attr_reader :subordinates

    def initialize(name, title, salary, boss, subordinates)
        @subordinates = subordinates
        @subordinates.each {|employee| employee.boss = self }
        super(name, title, salary, boss)
    end

    def bonus(multiplier)
        running_total = 0
        queue = @subordinates.dup
        until queue.empty?
            current = queue.shift
            running_total += current.salary
            queue += current.subordinates if current.instance_of?(Manager)
        end
        return running_total * multiplier
    end
end

david = Employee.new("david", "TA", 10000)
shawna = Employee.new("shawna", "TA", 12000)
darren = Manager.new("darren", "TA manager", 78000, nil, [shawna, david])
ned = Manager.new("ned", "founder", 1000000, nil, [darren])

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000