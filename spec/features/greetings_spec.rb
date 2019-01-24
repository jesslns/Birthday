feature "Greet user" do
  scenario "Say Hello to user" do
    visit('/')
    expect(page).to have_content "Hello! 你好！"
  end
end

  feature "Ask for name" do
    scenario "Ask for name" do
      visit('/')
      expect(page).to have_content "What is your name?"
    end

    scenario "User fill in name" do
      visit('/')
      fill_in :name, with:'Raymond'
      click_button 'Submit'
      expect(page).to have_content "Happy Birthday Raymond!"
    end
  end

  feature "Ask for birthday" do
    scenario "Ask for birthday" do
      visit('/')
      expect(page).to have_content "When's your birthday?"
    end

    scenario "User input birthday from drop-down list" do
      visit('/')
      fill_in :name, with:'Raymond'
      fill_in :day, with: 1
      select 'May', from: 'month'
      click_button 'Go'
      expect(page).to have_content "Your birthday is in day(s)"
    end
  end
