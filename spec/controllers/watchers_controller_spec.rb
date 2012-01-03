require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WatchersController do

  # This should return the minimal set of attributes required to create a valid
  # Watcher. As you add validations to Watcher, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all watchers as @watchers" do
      watcher = Watcher.create! valid_attributes
      get :index
      assigns(:watchers).should eq([watcher])
    end
  end

  describe "GET show" do
    it "assigns the requested watcher as @watcher" do
      watcher = Watcher.create! valid_attributes
      get :show, :id => watcher.id
      assigns(:watcher).should eq(watcher)
    end
  end

  describe "GET new" do
    it "assigns a new watcher as @watcher" do
      get :new
      assigns(:watcher).should be_a_new(Watcher)
    end
  end

  describe "GET edit" do
    it "assigns the requested watcher as @watcher" do
      watcher = Watcher.create! valid_attributes
      get :edit, :id => watcher.id
      assigns(:watcher).should eq(watcher)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Watcher" do
        expect {
          post :create, :watcher => valid_attributes
        }.to change(Watcher, :count).by(1)
      end

      it "assigns a newly created watcher as @watcher" do
        post :create, :watcher => valid_attributes
        assigns(:watcher).should be_a(Watcher)
        assigns(:watcher).should be_persisted
      end

      it "redirects to the created watcher" do
        post :create, :watcher => valid_attributes
        response.should redirect_to(Watcher.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved watcher as @watcher" do
        # Trigger the behavior that occurs when invalid params are submitted
        Watcher.any_instance.stub(:save).and_return(false)
        post :create, :watcher => {}
        assigns(:watcher).should be_a_new(Watcher)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Watcher.any_instance.stub(:save).and_return(false)
        post :create, :watcher => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested watcher" do
        watcher = Watcher.create! valid_attributes
        # Assuming there are no other watchers in the database, this
        # specifies that the Watcher created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Watcher.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => watcher.id, :watcher => {'these' => 'params'}
      end

      it "assigns the requested watcher as @watcher" do
        watcher = Watcher.create! valid_attributes
        put :update, :id => watcher.id, :watcher => valid_attributes
        assigns(:watcher).should eq(watcher)
      end

      it "redirects to the watcher" do
        watcher = Watcher.create! valid_attributes
        put :update, :id => watcher.id, :watcher => valid_attributes
        response.should redirect_to(watcher)
      end
    end

    describe "with invalid params" do
      it "assigns the watcher as @watcher" do
        watcher = Watcher.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Watcher.any_instance.stub(:save).and_return(false)
        put :update, :id => watcher.id, :watcher => {}
        assigns(:watcher).should eq(watcher)
      end

      it "re-renders the 'edit' template" do
        watcher = Watcher.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Watcher.any_instance.stub(:save).and_return(false)
        put :update, :id => watcher.id, :watcher => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested watcher" do
      watcher = Watcher.create! valid_attributes
      expect {
        delete :destroy, :id => watcher.id
      }.to change(Watcher, :count).by(-1)
    end

    it "redirects to the watchers list" do
      watcher = Watcher.create! valid_attributes
      delete :destroy, :id => watcher.id
      response.should redirect_to(watchers_url)
    end
  end

end