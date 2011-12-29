require 'spec_helper'

describe LibrariesController do
  describe "GET index" do
    it "assigns all libaries to @libraries" do
      library = Factory(:library)
      get :index
      assigns(:libraries).should eq([library])
    end
  end
  
  describe "GET show" do
    it "assign the requested library to @library" do
      library = Factory(:library)
      get :show, id:library.id
      assigns(:library).should eq(library)
    end
  end
end
