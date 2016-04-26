require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :name => "MyString",
      :message => "MyString",
      :task => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_name[name=?]", "answer[name]"

      assert_select "input#answer_message[name=?]", "answer[message]"

      assert_select "input#answer_task_id[name=?]", "answer[task_id]"
    end
  end
end
