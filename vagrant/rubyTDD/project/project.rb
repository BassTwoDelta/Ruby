class Project
    attr_accessor :name, :description, :owner, :tasks

    def initialize name, description, owner
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end

    def elevator_pitch
        p "#{@name}, #{description}, #{owner}"
    end

    def tasks
        p @tasks
    end

    def add_task task
        @tasks.push(task)
        return self
    end

    def print_tasks
        @tasks
    end
end


@project1 = Project.new('Project 1', 'description 1', 'John Doe')
@project1.elevator_pitch

@project1.add_task("Something").add_task("something else")
@project1.tasks
@project1.print_tasks