require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :name => "Name",
        :message => "Message",
        :task => nil
      ),
      Answer.create!(
        :name => "Name",
        :message => "Message",
        :task => nil
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
