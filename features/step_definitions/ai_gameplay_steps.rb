Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I register to play the game$/) do
  fill_in 'player_name', with: 'Nick'
  click_button 'Register'
end

Then(/^I should be asked to play against the AI or another user$/) do
  expect(page).to have_content("Which type of opponent do you want?")
end
