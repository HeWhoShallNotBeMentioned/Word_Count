require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word count path', {:type => :feature}) do
  it('processes ') do
    visit('/')
    fill_in('long_string', :with => 'Peter Piper chris sam chris')
    fill_in('short_string', :with => 'chris')
    click_button('Send')
    expect(page).to have_content(2)
  end
end
