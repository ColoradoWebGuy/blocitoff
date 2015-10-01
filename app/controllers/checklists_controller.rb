class ChecklistsController < ApplicationController

  def index
    @checklists = Checklist.all
  end

  def show
    @checklist = Checklist.find(params[:id])
  end

  def new
    @checklist = Checklist.new
  end

  def edit
    @checklist = Checklist.find(params[:id])
  end
end
