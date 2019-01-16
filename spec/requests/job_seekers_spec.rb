require 'rails_helper'

RSpec.describe "JobSeekers", type: :request do
  describe "GET /job_seekers" do
    it "works! (now write some real specs)" do
      get job_seekers_path
      expect(response).to have_http_status(200)
    end
  end
end
