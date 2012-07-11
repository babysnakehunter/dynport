require 'spec_helper'

describe Artist do
  describe "GET /artists" do
    it "should be found but redirect for user authentification" do
      get artists_path
      response.status.should be(302)
    end
    
    it "should display normally after authentification" do
    #  get artists_path
    #  response.status.should be(200)
    end
  end
end
