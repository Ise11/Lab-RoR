FactoryGirl.define do
  factory :task do
    sequence(:name)  { |n| "Tytuł #{n}" }
    # name "Tytuł"
    sequence(:content)  { |n| "Tresc #{n}" }
    # content "Treść"
    
  end
end


