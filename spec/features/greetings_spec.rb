feature "Greet user" do
  scenario "Say Hello to user" do
    visit('/')
    expect(page).to have_content "Hello! 你好！"
  end

  scenario "Ask for birthday" do
    visit('/')
    expect(page).to have_content "When's your birthday?"
  end

  feature "Ask for name" do
    scenario "Ask for name" do
      visit('/')
      expect(page).to have_content "What is your name?"
    end

    scenario "User fill in name" do
      visit('/')
      fill_in :name, with:'Raymond'
      expect(page).to have_content "Happy Birthday Raymond!"
    end
  end
end
