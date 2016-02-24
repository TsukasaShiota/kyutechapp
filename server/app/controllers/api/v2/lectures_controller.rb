class Api::V2::LecturesController < ApplicationController
  before_action :set_lecture, only: [:show, :edit, :update, :destroy]

  def allLectures
    @campus_id = params[:campus_id]
    if @campus_id == nil
      @lectures = Lecture.all
    else
      @lectures = Lecture.where("campus_id = ?", @campus_id)
    end
    render json: @lectures
  end

  def lecture
    @id = params[:id]
    render json: Lecture.find_by(:id => @id) 
  end

end
