# frozen_string_literal: true

require "rails_helper"

RSpec.describe "services/show" do
  before do
    assign(:service, Service.create!(
                       name: "MyText",
                       description: "MyText",
                       price: "9.99"
                     ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
