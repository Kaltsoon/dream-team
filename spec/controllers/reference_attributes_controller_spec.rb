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

describe ReferenceAttributesController do

  # This should return the minimal set of attributes required to create a valid
  # ReferenceAttribute. As you add validations to ReferenceAttribute, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "reference_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReferenceAttributesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all reference_attributes as @reference_attributes" do
      reference_attribute = ReferenceAttribute.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reference_attributes).should eq([reference_attribute])
    end
  end

  describe "GET show" do
    it "assigns the requested reference_attribute as @reference_attribute" do
      reference_attribute = ReferenceAttribute.create! valid_attributes
      get :show, {:id => reference_attribute.to_param}, valid_session
      assigns(:reference_attribute).should eq(reference_attribute)
    end
  end

  describe "GET new" do
    it "assigns a new reference_attribute as @reference_attribute" do
      get :new, {}, valid_session
      assigns(:reference_attribute).should be_a_new(ReferenceAttribute)
    end
  end

  describe "GET edit" do
    it "assigns the requested reference_attribute as @reference_attribute" do
      reference_attribute = ReferenceAttribute.create! valid_attributes
      get :edit, {:id => reference_attribute.to_param}, valid_session
      assigns(:reference_attribute).should eq(reference_attribute)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ReferenceAttribute" do
        expect {
          post :create, {:reference_attribute => valid_attributes}, valid_session
        }.to change(ReferenceAttribute, :count).by(1)
      end

      it "assigns a newly created reference_attribute as @reference_attribute" do
        post :create, {:reference_attribute => valid_attributes}, valid_session
        assigns(:reference_attribute).should be_a(ReferenceAttribute)
        assigns(:reference_attribute).should be_persisted
      end

      it "redirects to the created reference_attribute" do
        post :create, {:reference_attribute => valid_attributes}, valid_session
        response.should redirect_to(ReferenceAttribute.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reference_attribute as @reference_attribute" do
        # Trigger the behavior that occurs when invalid params are submitted
        ReferenceAttribute.any_instance.stub(:save).and_return(false)
        post :create, {:reference_attribute => { "reference_id" => "invalid value" }}, valid_session
        assigns(:reference_attribute).should be_a_new(ReferenceAttribute)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ReferenceAttribute.any_instance.stub(:save).and_return(false)
        post :create, {:reference_attribute => { "reference_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reference_attribute" do
        reference_attribute = ReferenceAttribute.create! valid_attributes
        # Assuming there are no other reference_attributes in the database, this
        # specifies that the ReferenceAttribute created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ReferenceAttribute.any_instance.should_receive(:update).with({ "reference_id" => "1" })
        put :update, {:id => reference_attribute.to_param, :reference_attribute => { "reference_id" => "1" }}, valid_session
      end

      it "assigns the requested reference_attribute as @reference_attribute" do
        reference_attribute = ReferenceAttribute.create! valid_attributes
        put :update, {:id => reference_attribute.to_param, :reference_attribute => valid_attributes}, valid_session
        assigns(:reference_attribute).should eq(reference_attribute)
      end

      it "redirects to the reference_attribute" do
        reference_attribute = ReferenceAttribute.create! valid_attributes
        put :update, {:id => reference_attribute.to_param, :reference_attribute => valid_attributes}, valid_session
        response.should redirect_to(reference_attribute)
      end
    end

    describe "with invalid params" do
      it "assigns the reference_attribute as @reference_attribute" do
        reference_attribute = ReferenceAttribute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ReferenceAttribute.any_instance.stub(:save).and_return(false)
        put :update, {:id => reference_attribute.to_param, :reference_attribute => { "reference_id" => "invalid value" }}, valid_session
        assigns(:reference_attribute).should eq(reference_attribute)
      end

      it "re-renders the 'edit' template" do
        reference_attribute = ReferenceAttribute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ReferenceAttribute.any_instance.stub(:save).and_return(false)
        put :update, {:id => reference_attribute.to_param, :reference_attribute => { "reference_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reference_attribute" do
      reference_attribute = ReferenceAttribute.create! valid_attributes
      expect {
        delete :destroy, {:id => reference_attribute.to_param}, valid_session
      }.to change(ReferenceAttribute, :count).by(-1)
    end

    it "redirects to the reference_attributes list" do
      reference_attribute = ReferenceAttribute.create! valid_attributes
      delete :destroy, {:id => reference_attribute.to_param}, valid_session
      response.should redirect_to(reference_attributes_url)
    end
  end

end
