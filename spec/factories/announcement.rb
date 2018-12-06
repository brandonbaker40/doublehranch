FactoryGirl.define do
  factory :annoucement do
    text { "Something big is happening soon...." }
    start_date { Date.today }
    end_date { Date.today + 2 }
  end
end
