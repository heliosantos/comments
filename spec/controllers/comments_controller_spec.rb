require 'spec_helper'

describe CommentsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'

      puts response.status = :not_found
      response.should be_success

    end
  end

end
