require 'rails_helper'

describe Survey do

  before(:each) do
    @survey = Survey.create!(name: "Favorite Banana")
  end

  it 'has a name' do
    expect(@survey.name).to eq("Favorite Banana")
  end
end
