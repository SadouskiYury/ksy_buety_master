# frozen_string_literal: true

require "rails_helper"

RSpec.describe "admin_masters/new" do
  before do
    assign(:admin_master, AdminMaster.new(
                            id: "",
                            admin: nil,
                            master: nil,
                            role: ""
                          ))
  end

  it "renders new admin_master form" do
    render

    assert_select "form[action=?][method=?]", admin_masters_path, "post" do
      assert_select "input[name=?]", "admin_master[id]"

      assert_select "input[name=?]", "admin_master[admin_id]"

      assert_select "input[name=?]", "admin_master[master_id]"

      assert_select "input[name=?]", "admin_master[role]"
    end
  end
end
