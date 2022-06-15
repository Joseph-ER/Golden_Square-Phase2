=begin
 
as a user
so that I can keep track of my tasks
I want to check if a text includes the string todo

method = tasks_checker
parameters = string called text
returns a string if the text does not contain "#TODO"
other side effects

opening another Rspec example to compare

=end

require 'recorded_challenge'

RSpec.describe "task_checker" do
  it "tests if 'TODO' is not present in text string" do
     result = task_checker("feed the dog")
    expect(result).to eq "No '#TODO' present in text"
  end
  it "tests if '#TODO' is present in text string" do
    result = task_checker("#TODO feed the cat")
    expect(result).to eq true
  end
end