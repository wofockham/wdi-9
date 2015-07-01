require 'rails_helper'

RSpec.describe FruitsController, :type => :controller do
  describe 'GET /fruits' do
    before do
      3.times { |i| Fruit.create :name => "Fruit number #{ i }"}
    end

    describe 'as HTML' do
      before do
        get :index
      end

      it "should respond with a status 200 OK" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "should provide the fruits in an instance variable in reverse order" do
        expect(assigns(:fruits)).to be
        expect(assigns(:fruits).length).to eq(3)
        expect(assigns(:fruits).first.class).to eq(Fruit)
        expect(assigns(:fruits).first.name).to eq("Fruit number 2")
      end

      it "should render the index view" do
        expect(response).to render_template(:index)
      end
    end

    describe 'as JSON' do
      before do
        get :index, :format => :json
      end

      it "should respond with a status 200 OK" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should have the right content type' do
        expect(response.content_type).to eq('application/json')
      end

      it "should provide the fruit name" do
        fruits = JSON.parse(response.body)
        expect(fruits.length).to eq(3)
        expect(fruits.first['name']).to eq('Fruit number 2')
      end
    end
  end
end












