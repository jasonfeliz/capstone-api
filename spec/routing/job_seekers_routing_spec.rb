require "rails_helper"

RSpec.describe JobSeekersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/job_seekers").to route_to("job_seekers#index")
    end


    it "routes to #show" do
      expect(:get => "/job_seekers/1").to route_to("job_seekers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/job_seekers").to route_to("job_seekers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/job_seekers/1").to route_to("job_seekers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/job_seekers/1").to route_to("job_seekers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/job_seekers/1").to route_to("job_seekers#destroy", :id => "1")
    end

  end
end
