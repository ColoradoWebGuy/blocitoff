class ChecklistsController < ApplicationController

  before_action :authenticate_user!

  def index
    if visible_to?(current_user)
      @checklists = current_user.checklists.all
      @checklist = Checklist.new
    end
  end

  # create is a POST action
  def create
     @checklist = current_user.checklists.build(checklist_params)

     # inspect the @checklist within the terminal.
     Rails.logger.info ">>>>>> checklist: #{@checklist.inspect}"

     if @checklist.save
       flash[:notice] = "Item was saved successfully."
       @index = Checklist.count - 1
       #@checklists = Checklist.all
       #redirect_to checklists_path, notice: "Item was saved successfully."
     else
       flash[:alert] = "Error creating item. Please try again."
       #render :index
     end

     respond_to do |format|
      format.html
      format.js
     end
  end

  def destroy
     @checklist = current_user.checklists.find(params[:id])

     if @checklist.destroy
       flash[:notice] = "Item was deleted."
       #redirect_to checklists_path, notice: "Item was deleted."
     else
       @checklists = Checklist.all
       flash[:alert] = "Item couldn't be deleted. Try again."
       #render :index
     end

     respond_to do |format|
      format.html
      format.js
     end
   end

  private

  def visible_to?(user)
    user_signed_in? == user
    true
  end

   def checklist_params
     params.require(:checklist).permit(:title)
   end
end
