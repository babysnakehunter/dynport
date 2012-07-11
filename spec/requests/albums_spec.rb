require 'spec_helper'

describe Album do
  describe "GET /albums" do
    it "should be found but redirect for user authentification" do
      get albums_path
      response.status.should be(302)
    end
    
    it "should display normally after authentification" do
    #  get albums_path
    #  response.status.should be(200)
    end
  end
end
