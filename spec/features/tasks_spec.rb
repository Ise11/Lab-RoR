require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
#   pending "add some scenarios (or delete) #{__FILE__}"
    it "should have title" do
        visit tasks_path
        expect(page).to have_content("Lista wyzwań")
  end
  
  let!(:task){ Task.create name: "To jest super zadanie", content: "Treść zadania" }
  
  it "should display good task" do
    visit tasks_path

    expect(page).to have_content task.name
    expect(page).to have_content "Pokaż"
  end
  
    it "should open task page" do
    visit tasks_path
    
    expect(page).to have_content "Pokaż"
    click_link "Pokaż"
    
    expect(current_path).to eq task_path(task)
    expect(page).to have_content task.name
    expect(page).to have_content "Dodano: #{task.created_at.strftime "%F"}"
  end
  
 
  
  it "should display answers " do
    com1 = task.answers.create name: "Jurek", message: "Super"
    com2 = task.answers.create name: "Zosia", message: "Ekstra"
    
    visit task_path(task)
    
    expect(page).to have_content task.name
    expect(page).to have_content com1.message
    expect(page).to have_content com2.message
    expect(page).to have_content com1.name
    expect(page).to have_content com2.name
    expect(page).to have_content "Dodano: #{com1.created_at.strftime "%F"}"
    expect(page).to have_content "Dodano: #{com2.created_at.strftime "%F"}"
  end
  
    it "should add answer" do
    visit task_path(task)
    
    fill_in :answer_name, with: "Ania"
    fill_in :answer_message, with: "To chyba nie zadziała"
    expect{
      click_on "Komentuj"
    }.to change{ task.answers.count }.by(1)
    
    expect(current_path).to eq task_path(task)
    expect(page).to have_content "Odpowiedź została dodana"
    expect(page).to have_content "Ania"
    expect(page).to have_content "To chyba nie zadziała"
  end
 
end
