# frozen_string_literal: true

require "rails_helper"

RSpec.describe AdminMastersController do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin_masters").to route_to("admin_masters#index")
    end

    it "routes to #new" do
      expect(get: "/admin_masters/new").to route_to("admin_masters#new")
    end

    it "routes to #show" do
      expect(get: "/admin_masters/1").to route_to("admin_masters#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin_masters/1/edit").to route_to("admin_masters#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/admin_masters").to route_to("admin_masters#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin_masters/1").to route_to("admin_masters#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin_masters/1").to route_to("admin_masters#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin_masters/1").to route_to("admin_masters#destroy", id: "1")
    end
  end
end
