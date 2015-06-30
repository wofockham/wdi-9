FactoryGirl.define do

  # Generic user: FactoryGirl.create :user
  factory :user do |f|
    f.sequence(:name) { Faker::Name.name }
    f.sequence(:email) { Faker::Internet.email }

    # User with associated tweets: FactoryGirl.create :user_with_tweets
    factory :user_with_tweets do
      after(:create) do |u|
        FactoryGirl.create_list(:tweet, Random.rand(10..100), :user => u)
      end
    end
  end

  # Generic tweet: FactoryGirl.create :tweet
  factory :tweet do |f|
    f.sequence(:content) { Faker::Lorem.sentence }
  end

end
