FactoryGirl.define do
  factory :comment do
    title { "nice comment" }
    comment { "just wanted to say how lovely it is today" }
    commentable_type { "Post" }
    commentable
    user
    role { "comments" }
  end
end
