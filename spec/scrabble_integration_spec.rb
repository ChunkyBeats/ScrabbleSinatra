require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application

describe('the scrabble path', {:type =>:feature}) do
  it('processes the word and returns the score') do
    visit('/')
    fill_in('word', :with => 'hello')
    click_button('Send')
    expect(page).to have_content('8')
  end
end
