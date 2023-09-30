# frozen_string_literal: true

require "rails_helper"

RSpec.describe MastersController do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/masters").to route_to("masters#index")
    end

    it "routes to #new" do
      expect(get: "/masters/new").to route_to("masters#new")
    end

    it "routes to #show" do
      expect(get: "/masters/1").to route_to("masters#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/masters/1/edit").to route_to("masters#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/masters").to route_to("masters#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/masters/1").to route_to("masters#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/masters/1").to route_to("masters#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/masters/1").to route_to("masters#destroy", id: "1")
    end
  end
end
