class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create

    @survey = Survey.find(params[:id])
  end

  def edit
  end

  def update
  end


  def destroy
  end
end

