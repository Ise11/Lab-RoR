require 'rails_helper'

RSpec.describe "names/edit", type: :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :message => "MyString",
      :task => nil
    ))
  end

  it "renders the edit name form" do
    render

    assert_select "form[action=?][method=?]", name_path(@name), "post" do

      assert_select "input#name_message[name=?]", "name[message]"

      assert_select "input#name_task_id[name=?]", "name[task_id]"
    end
  end
end
