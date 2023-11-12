# frozen_string_literal: true

require "rails_helper"

RSpec.describe "admin_masters/show" do
  before do
    assign(:admin_master, AdminMaster.create!(
                            id: "",
                            admin: nil,
                            master: nil,
                            role: ""
                          ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
