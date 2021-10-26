require_relative "employee.rb"

class Manager < Employee
    def initialize(name, title, salary, boss, subordinates)
        super(name, title, salary, boss)
        @subordinates = subordinates
    end

    def bonus(multiplier)
        running_total = 0
        queue = @subordinates.dup
        until queue.empty?
            current = queue.shift
            if current.instance_of?(Employee)
                running_total += current.salary
            else
                queue += current.subordinates
            end

        end

        # bonus = @subordinates.map(&:salary).sum * multiplier
    end
end