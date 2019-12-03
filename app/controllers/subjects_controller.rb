class SubjectsController < ApplicationController

  def new
    @subject = Subject.new
    @subject.build_category
  end

  def create 
    @subject = Subject.new(subject_params)
    
    if @subject.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private 

  def subject_params
    params.require(:subject).permit(:title, :description, :option_1, :option_2, :category_id, category_attributes:[:title])
  end

  end
