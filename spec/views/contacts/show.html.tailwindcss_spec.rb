# frozen_string_literal: true

require "rails_helper"

RSpec.describe "contacts/show" do
  before do
    assign(:contact, Contact.create!(
                       link: "Link",
                       phone_number: "Phone Number",
                       note: "Note"
                     ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Note/)
  end
end
