Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I register to play the game$/) do
  visit'/reset_game'
  visit'/'
  fill_in 'player_name', with: 'Nick'
  click_button 'Register'
end

Then(/^I should be asked to play against the AI or another user$/) do
  expect(page).to have_content("Which type of opponent do you want?")
end

Given(/^I am playing against the AI$/) do
  visit'/reset_game'
  visit'/'
  step("I register to play the game")
  click_button 'ai'
end

When(/^I choose an option$/) do
  click_button 'Rock'
end

Then(/^I should find out if I have won or not$/) do
  expect(page).to have_content("wins!")
end

Given(/^I am playing against another user$/) do
  step("I register to play the game")
  click_button 'user' # express the regexp above with the code you wish you had
end