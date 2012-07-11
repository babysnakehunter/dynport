require 'spec_helper'

describe "ArtistsController" do
  
  describe "#index" do
    it "should list ALL artists"
  end
  
  describe "#create" do
    it "should create a new artist and redirect to #show"
    
    it "redirect to #new on save error and display a notice"
  end
  
  describe "#show" do
    it "should display a table of the artist's albums if present"
    
    it "should display a message if no albums of this artist are present"
  end
  
  describe "#delete" do
    it "should be restricted to admin usage"
    
    it "should delete the artist and all associated albums"
  end

end