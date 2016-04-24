class SurveysController < ApplicationController

  before_action :survey_lookup, only: [:edit, :show]

  def new
    @survey = Survey.new
    2.times { @survey.questions.build }
  end

  def create
    @survey = Survey.create(survey_params)
    redirect_to survey_path(@survey)
  end

  def edit
  end

  def update
    @survey = Survey.update(survey_params)
  end

  def show
  end

  def index
    @surveys = Survey.all
  end

  private
  
  def survey_lookup
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit(:name, questions_attributes: [:phrase])
  end

end
