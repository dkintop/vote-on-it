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
    binding.pry
    if @subject.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def index 
    #subjects_path
    @subjects = Subject.all
  end

  private 

  def subject_params
    params.require(:subject).permit(:title, :description, :option_1, :option_2, :category_id, category_attributes:[:title])
  end

  end
