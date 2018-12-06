FactoryGirl.define do
  factory :email_template do
    label { "2019 goals" }
    subject { "news from the chief" }
    body { "You know the drill. We make goals and achieve them!" }
    author
  end
end
