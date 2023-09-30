# frozen_string_literal: true

require "rails_helper"

RSpec.describe "admin_masters/edit" do
  let(:admin_master) do
    AdminMaster.create!(
      id: "",
      admin: nil,
      master: nil,
      role: ""
    )
  end

  before do
    assign(:admin_master, admin_master)
  end

  it "renders the edit admin_master form" do
    render

    assert_select "form[action=?][method=?]", admin_master_path(admin_master), "post" do
      assert_select "input[name=?]", "admin_master[id]"

      assert_select "input[name=?]", "admin_master[admin_id]"

      assert_select "input[name=?]", "admin_master[master_id]"

      assert_select "input[name=?]", "admin_master[role]"
    end
  end
end
