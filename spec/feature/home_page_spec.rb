require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "serve web app" do
  scenario "should serve home page" do
    visit("/")
    expect(page).to have_content 0
    expect(page).to have_button('Increment')
  end
end
