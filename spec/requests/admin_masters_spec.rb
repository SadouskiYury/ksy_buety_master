# frozen_string_literal: true

require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/admin_masters" do
  # This should return the minimal set of attributes required to create a valid
  # AdminMaster. As you add validations to AdminMaster, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip("Add a hash of attributes valid for your model")
  end

  let(:invalid_attributes) do
    skip("Add a hash of attributes invalid for your model")
  end

  describe "GET /index" do
    it "renders a successful response" do
      AdminMaster.create! valid_attributes
      get admin_masters_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      admin_master = AdminMaster.create! valid_attributes
      get admin_master_url(admin_master)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_admin_master_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      admin_master = AdminMaster.create! valid_attributes
      get edit_admin_master_url(admin_master)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AdminMaster" do
        expect do
          post admin_masters_url, params: { admin_master: valid_attributes }
        end.to change(AdminMaster, :count).by(1)
      end

      it "redirects to the created admin_master" do
        post admin_masters_url, params: { admin_master: valid_attributes }
        expect(response).to redirect_to(admin_master_url(AdminMaster.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AdminMaster" do
        expect do
          post admin_masters_url, params: { admin_master: invalid_attributes }
        end.not_to change(AdminMaster, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post admin_masters_url, params: { admin_master: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        skip("Add a hash of attributes valid for your model")
      end

      it "updates the requested admin_master" do
        admin_master = AdminMaster.create! valid_attributes
        patch admin_master_url(admin_master), params: { admin_master: new_attributes }
        admin_master.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the admin_master" do
        admin_master = AdminMaster.create! valid_attributes
        patch admin_master_url(admin_master), params: { admin_master: new_attributes }
        admin_master.reload
        expect(response).to redirect_to(admin_master_url(admin_master))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        admin_master = AdminMaster.create! valid_attributes
        patch admin_master_url(admin_master), params: { admin_master: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested admin_master" do
      admin_master = AdminMaster.create! valid_attributes
      expect do
        delete admin_master_url(admin_master)
      end.to change(AdminMaster, :count).by(-1)
    end

    it "redirects to the admin_masters list" do
      admin_master = AdminMaster.create! valid_attributes
      delete admin_master_url(admin_master)
      expect(response).to redirect_to(admin_masters_url)
    end
  end
end
