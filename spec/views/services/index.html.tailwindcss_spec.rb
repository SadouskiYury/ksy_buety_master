# frozen_string_literal: true

require "rails_helper"

RSpec.describe "services/index" do
  before do
    assign(:services, [
             Service.create!(
               name: "MyText",
               description: "MyText",
               price: "9.99"
             ),
             Service.create!(
               name: "MyText",
               description: "MyText",
               price: "9.99"
             )
           ])
  end

  it "renders a list of services" do
    render
    cell_selector = Rails::VERSION::STRING >= "7" ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
