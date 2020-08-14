require_relative 'project'
RSpec.describe Project do 
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1', 'John Doe')
        @project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
    end

    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name"
        expect(@project1.name).to eq("Changed Name")
    end

    it 'has a getter and setter for owner attribute' do
        @project1.owner = "Changed Owner"
        expect(@project1.owner).to eq("Changed Owner")
        @project2.owner = "Changed this Owner"
        expect(@project2.owner).to eq("Changed this Owner")
    end

    it 'has a method tasks to show the tasks for each project' do
        @project1.tasks = ['do something']
        expect(@project1.tasks).to eq(['do something'])
    end

    it 'has a method add_tasks to add a task to the project' do
        @project1.add_task('something')
        expect(@project1.tasks).to eq(['something'])
    end

    it 'has a method print_tasks to print each task of the project' do
        @project1.add_task('something')
        expect(@project1.print_tasks[0]).to eq('something')
    end

    it 'has a method elevator_pitch to explain name and description' do 
        expect(@project1.elevator_pitch).to eq("Project 1, description 1, John Doe")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2, Jane Doe")
    end
end