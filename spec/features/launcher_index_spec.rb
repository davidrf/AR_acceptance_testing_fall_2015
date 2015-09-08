require 'spec_helper'

feature "Launcher Index", %(
  As a User
  I want to see a list of Launchers
  So I can talk about their hairdos

  #Acceptance Criteria
  - I must see the name of all the Launchers in the database
  - I should not see the description of their hairdos
) do
  scenario "user sees the correct title" do
    launcher_1 = Launcher.create(name: "Margaret Morgan", hairdo_description: "Bun")
    launcher_2 = Launcher.create(name: "Jake Giberson", hairdo_description: "Dreads")
    visit '/'

    expect(page).to have_content launcher_1.name
    expect(page).to have_content launcher_2.name
  end
end

