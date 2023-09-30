# frozen_string_literal: true

require "rails_helper"

RSpec.describe "contacts/new" do
  before do
    assign(:contact, Contact.new(
                       link: "MyString",
                       phone_number: "MyString",
                       note: "MyString"
                     ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "input[name=?]", "contact[link]"

      assert_select "input[name=?]", "contact[phone_number]"

      assert_select "input[name=?]", "contact[note]"
    end
  end
end
