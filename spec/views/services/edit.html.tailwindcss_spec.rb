# frozen_string_literal: true

require "rails_helper"

RSpec.describe "services/edit" do
  let(:service) do
    Service.create!(
      name: "MyText",
      description: "MyText",
      price: "9.99"
    )
  end

  before do
    assign(:service, service)
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(service), "post" do
      assert_select "textarea[name=?]", "service[name]"

      assert_select "textarea[name=?]", "service[description]"

      assert_select "input[name=?]", "service[price]"
    end
  end
end
