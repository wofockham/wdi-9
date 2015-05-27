class PagesController < ApplicationController
  def home
  end

  def numbers
    @amount = 234
    @large_number = 1324134938
    @phone = 2125551212
  end

  def text
    @numbers = (1..20).to_a
    @person_count = 1
    @people_count = 15
    @story = 'A very very very long long long time ago in a galaxy far away... ' * 15
  end

  def assets
  end

  def url
  end
end
