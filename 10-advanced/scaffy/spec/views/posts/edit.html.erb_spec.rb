require 'rails_helper'

RSpec.describe "posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :content => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_title[name=?]", "post[title]"
    end
  end
end
