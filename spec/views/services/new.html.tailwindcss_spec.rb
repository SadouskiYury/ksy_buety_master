# frozen_string_literal: true

require "rails_helper"

RSpec.describe "services/new" do
  before do
    assign(:service, Service.new(
                       name: "MyText",
                       description: "MyText",
                       price: "9.99"
                     ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do
      assert_select "textarea[name=?]", "service[name]"

      assert_select "textarea[name=?]", "service[description]"

      assert_select "input[name=?]", "service[price]"
    end
  end
end
