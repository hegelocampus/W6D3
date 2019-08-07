
class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        (salary) * multiplier
    end

end

class Manager < Employee

    attr_reader :emplyees

    def initialize(name, title, salary, boss)
        super
        @emplyees = []
    end

    def bonus(multiplier)
        (emplyees.map(&:salary).sum) * multiplier
    end
end

