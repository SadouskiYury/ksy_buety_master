# frozen_string_literal: true

require "rails_helper"

RSpec.describe "contacts/index" do
  before do
    assign(:contacts, [
             Contact.create!(
               link: "Link",
               phone_number: "Phone Number",
               note: "Note"
             ),
             Contact.create!(
               link: "Link",
               phone_number: "Phone Number",
               note: "Note"
             )
           ])
  end

  it "renders a list of contacts" do
    render
    cell_selector = Rails::VERSION::STRING >= "7" ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Link".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Note".to_s), count: 2
  end
end
