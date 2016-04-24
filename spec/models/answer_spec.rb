require 'rails_helper'

describe Answer do

  before(:each) do
    @question = Question.create!(phrase: "Do you have any fruit?")
    @answer = Answer.create!(name: "Banana duh", question_id: @question.id)
  end

  it 'has a name' do
    expect(@answer.name).to eq("Banana duh")
  end

  it 'belongs to a question' do
    expect(@answer.question).to eq(@question)
  end
end


