# frozen_string_literal: true

require "rails_helper"

RSpec.describe "masters/index" do
  before do
    assign(:masters, [
             Master.create!(
               id: "",
               about_me: "MyText",
               certificate: nil,
               article: nil,
               contact: nil,
               review: nil,
               service: nil,
               discount: nil
             ),
             Master.create!(
               id: "",
               about_me: "MyText",
               certificate: nil,
               article: nil,
               contact: nil,
               review: nil,
               service: nil,
               discount: nil
             )
           ])
  end

  it "renders a list of masters" do
    render
    cell_selector = Rails::VERSION::STRING >= "7" ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
