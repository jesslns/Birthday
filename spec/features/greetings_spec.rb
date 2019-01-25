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

  end

  feature "Ask for birthday" do
    scenario "Ask for birthday" do
      visit('/')
      expect(page).to have_content "When's your birthday?"
    end

    scenario "input birthday and return countdown" do
      time = Time.new
      month = time.strftime "%B"
      visit('/')
      fill_in :name, with:'Raymond'
      fill_in :day, with: time.day + 1
      select month, from: 'month'
      click_button 'Go'
      expect(page).to have_content "Raymond, your birthday is in 1 day(s)!"
    end

    scenario "Say happy Birthday" do
      time = Time.new
      month = time.strftime "%B"
      visit('/')
      fill_in :name, with:'Raymond'
      fill_in :day, with: time.day
      select month, from: 'month'
      click_button 'Go'
      expect(page).to have_content "HaPpY BirTHdAy Raymond!"
    end
  end
