require 'spec_helper'

feature "launcher show", %(
  As a User
  I want to see Launcher harido profile
  So I can learn more about their fabulous hairdo

  #Acceptance Criteria
  - I should be able to click on a launcher name on the launcher index to get to this page
  - I should see the Launchers name, hairdo, overall rating
) do
  scenario "when user visit this page, they see list of launchers" do
    launcher = Launcher.create(name: "Margaret Morgan", hairdo: "half-top knot",
                                 overall_rating: "infinity")
    visit "/"
    click_link launcher.name
    expect(page).to have_content(launcher.name)
    expect(page).to have_content(launcher.hairdo)
    expect(page).to have_content(launcher.overall_rating)
  end
end


