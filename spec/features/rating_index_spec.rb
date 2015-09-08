require 'spec_helper'

feature "launcher index", %(
  As a User
  I want to see Launcher harido profile ratings
  So I can see how hot their hair is these days

  #Acceptance Criteria
  - I should see the ratings relevant to this hairdo
  - Ratings should have body, a date, the user
) do
  scenario "when user visit this page, they see the hairdo raitings" do
    launcher = Launcher.create(name: "Jake Giberson", hairdo: "Dreads",
                                 overall_rating: "fabulous")
    visit "/"
    click_link launcher.name

    fill_in "Body", with: "It's beautiful, magnifiscent"
    fill_in "Rating by", with: "Everyone"
    click_on "Submit"

    expect(page).to have_content("It's beautiful, magnifiscent")
    expect(page).to have_content(launcher.name)
  end
end


