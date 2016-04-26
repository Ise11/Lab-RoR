require 'rails_helper'

RSpec.describe Task, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
#     let(:task){ FactoryGirl.create :task }
  
#       it "should have good name" do
#         expect(task.name).to eq "Tytuł"
#         expect(task.content).to eq "Treść"
#   end
  
  let!(:task){ FactoryGirl.create :task }
  let!(:task2){ FactoryGirl.create :task }
  
      it "should have good name" do
        expect(task.name).to match(/.*\d+/)
        expect(task.content).to match(/.*\d+/)
        
        expect(task2.name).to match(/.*\d+/)
        expect(task2.content).to match(/.*\d+/)
        expect(task2.content).to_not eq task.content
        expect(task2.name).to_not eq task.name
  end
  
    it "should display good recent tasks" do
        task3 = FactoryGirl.create :task
        task4 = FactoryGirl.create :task
        
        expect(Task.recent.length).to eq 3
        expect(Task.recent).to_not include(task)
        expect(Task.recent).to include(task4)
        expect(Task.recent).to include(task3)
        expect(Task.recent).to include(task2)
        expect(Task.recent.first).to eq task4
    
  end
  
  
end
