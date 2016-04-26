require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :name => "MyString",
      :message => "MyString",
      :task => nil
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "input#answer_name[name=?]", "answer[name]"

      assert_select "input#answer_message[name=?]", "answer[message]"

      assert_select "input#answer_task_id[name=?]", "answer[task_id]"
    end
  end
end
