feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Hello there!"
  end

  scenario 'Can select a birthday and reach the next page' do
    visit('/')
    fill_in 'name', with: 'Adam'
    fill_in 'birthday', with: '22/12/1991'
    click_button 'Go!'
    expect(page).to have_content "Your birthday is 2018-12-22"
  end

end

# ARRANGE
# ACT
# ASSERT
