require 'rails_helper'

describe Question do

  before(:each) do
    @survey = Survey.create!(name: "Favorite Banana")
    @question = Question.create!(phrase: "What is your fav fruit?", survey_id: @survey.id)
    @answer = Answer.create!(name: "Banana", question_id: @question.id)
  end

  it 'has a phrase' do
    expect(@question.phrase).to eq("What is your fav fruit?")
  end

  it 'has many answers' do
    expect(@question.answers.first).to eq(@answer)
  end

  it 'belongs to a survey' do
    expect(@question.survey).to eq(@survey)
  end
end

