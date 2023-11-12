# frozen_string_literal: true

require "rails_helper"

RSpec.describe "masters/new" do
  before do
    assign(:master, Master.new(
                      id: "",
                      about_me: "MyText",
                      certificate: nil,
                      article: nil,
                      contact: nil,
                      review: nil,
                      service: nil,
                      discount: nil
                    ))
  end

  it "renders new master form" do
    render

    assert_select "form[action=?][method=?]", masters_path, "post" do
      assert_select "input[name=?]", "master[id]"

      assert_select "textarea[name=?]", "master[about_me]"

      assert_select "input[name=?]", "master[certificate_id]"

      assert_select "input[name=?]", "master[article_id]"

      assert_select "input[name=?]", "master[contact_id]"

      assert_select "input[name=?]", "master[review_id]"

      assert_select "input[name=?]", "master[service_id]"

      assert_select "input[name=?]", "master[discount_id]"
    end
  end
end
