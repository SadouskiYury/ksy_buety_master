# frozen_string_literal: true

require "rails_helper"

RSpec.describe "contacts/edit" do
  let(:contact) do
    Contact.create!(
      link: "MyString",
      phone_number: "MyString",
      note: "MyString"
    )
  end

  before do
    assign(:contact, contact)
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(contact), "post" do
      assert_select "input[name=?]", "contact[link]"

      assert_select "input[name=?]", "contact[phone_number]"

      assert_select "input[name=?]", "contact[note]"
    end
  end
end
