require 'rails_helper'

RSpec.describe "names/new", type: :view do
  before(:each) do
    assign(:name, Name.new(
      :message => "MyString",
      :task => nil
    ))
  end

  it "renders new name form" do
    render

    assert_select "form[action=?][method=?]", names_path, "post" do

      assert_select "input#name_message[name=?]", "name[message]"

      assert_select "input#name_task_id[name=?]", "name[task_id]"
    end
  end
end
