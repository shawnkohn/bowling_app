require 'spec_helper'

describe PagesController do

  describe "GET 'score'" do
    it "should be successful" do
      get 'score'
      response.should be_success
    end
  end

end
