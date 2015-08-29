require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word count path', {:type => :feature}) do
  it('takes a sentence to be searched by a second word and returns the number of times the word appears in the sentence ') do
    visit('/')
    fill_in('string_to_be_searched', :with => 'Peter Piper chris sam chris')
    fill_in('search_word', :with => 'chris')
    click_button('Send')
    expect(page).to have_content(2)
  end

  it('still works is either or both fields are blank when the send button is pushed ') do
    visit('/')
    fill_in('string_to_be_searched', :with => '')
    fill_in('search_word', :with => '')
    click_button('Send')
    expect(page).to have_content(0)
  end

end
