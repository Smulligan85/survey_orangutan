require 'rails_helper'
require 'capybara/rspec'


describe "the survey form", :type => :feature do
  it "sets the name of the survey" do
    visit '/surveys/new'
    fill_in :survey_name, with: 'What are your favorite fruits?'
    # save_and_open_page
    find('input[name="commit"]').click
    expect(Survey.last.name).to eq 'What are your favorite fruits?'
  end

  it "creates a question" do
    visit '/surveys/new'
    fill_in :survey_name, with: 'What are your favorite fruits?'
    fill_in :survey_questions_attributes_0_phrase, with: 'Bananas?'
    fill_in :survey_questions_attributes_1_phrase, with: 'Apples?'
    # save_and_open_page
    find('input[name="commit"]').click
    expect(Survey.last.questions.map(&:phrase)).to eq ['Bananas?', 'Apples?']
  end
end