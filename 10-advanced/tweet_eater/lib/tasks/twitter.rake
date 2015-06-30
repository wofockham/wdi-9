namespace :twitter do

  desc 'Purge all users and tweets from the database'
  task :purge => :environment do
    User.destroy_all
    Tweet.destroy_all
  end

  desc 'Create lorem ipsum tweets and associated users'
  task :lorem, [:user_count] => :environment do |t, args|
    FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
  end

  desc "Create tweets in our DB for actual tweets matching term"
  task :search, [:term, :limit] => :environment do |t, args|
    # Your code (some of it anyway) goes here...
  end

end