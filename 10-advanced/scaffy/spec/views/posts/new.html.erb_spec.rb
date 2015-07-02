require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :content => "MyText",
      :title => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_title[name=?]", "post[title]"
    end
  end
end
