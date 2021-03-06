require 'rails_helper'

RSpec.describe "names/show", type: :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :message => "Message",
      :task => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
    expect(rendered).to match(//)
  end
end
