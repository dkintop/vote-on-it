class SubjectsController < ApplicationController

  def new
    @subject = Subject.new
    @subject.build_category
  end

  def create 
    @subject = Subject.new(subject_params)
    if subject_params[:category_attributes][:title].blank?
      @subject.category = Category.find(subject_params[:category_id])
    end
      #lines 10-12 were necessary to prevent assigning and creating a blank category
    if @subject.save
      redirect_to new_subject_vote_path(@subject)
    else
      render :new
    end
  end

  def index #subjects_path or #user_subjects_path(user)
    if params[:user_id]
      @subjects = Subject.not_voted(current_user)
    else
      @subjects = Subject.all
    end
  end

  def show 
    @subject = Subject.find_by_id(params[:id])
  end

  private 

  def subject_params
    params.require(:subject).permit(:title, :description, :option_1, :option_2, :category_id, category_attributes:[:title])
  end

end
