require 'spec_helper'

describe AlbumsController do
  
  describe "#index" do
    it "should only get the user's albums"
    
    it "should get the artist for each of the user's albums"
  end
  
  describe "#create" do
    it "should create a new album with notice and redirect to #show"

    it "should redirect to artist#new with a notice when no artists exist"
  end
  
  describe "#show" do
    it "should get the artist for each of the user's albums"
  end
  
  describe "#delete" do
    it "should only allow to delete users' own albums"
  end
  
end