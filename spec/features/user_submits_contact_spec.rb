require 'spec_helper'

feature "User creates a new contact" do

  context 'with valid attributes' do
    it 'creates a contact with valid attributes' do
      visit '/contacts/new'
      fill_in "First Name", with: "Faizaan"
      fill_in "Last Name", with: "Faizaan"
      fill_in "Email", with: "faizaan@shamsi.com"
      fill_in "Subject", with: "Faizaan"
      fill_in "Description", with: "Faizaan"

      click_on "Submit"

      expect(page).to have_content "Contact was successfully created"
    end
  end

  context 'with invalid attributes' do
    it 'does not accept a blank form' do
      visit '/contacts/new'

      click_on "Submit"

      expect(page).to have_content "First name can't be blank"
      expect(page).to have_content "Last name can't be blank"
      expect(page).to have_content "Email can't be blank"
      expect(page).to have_content "Subject can't be blank"
      expect(page).to have_content "Description can't be blank"

    end
  end
end
