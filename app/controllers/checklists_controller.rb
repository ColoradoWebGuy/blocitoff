class ChecklistsController < ApplicationController

  def index
    @checklists = Checklist.all
    @checklist = Checklist.new
  end

  # create is a POST action
  def create
     @checklist = current_user.checklists.build(checklist_params)

     # inspect the @checklist within the terminal.
     Rails.logger.info ">>>>>> checklist: #{@checklist.inspect}"

     if @checklist.save
       redirect_to checklists_path, notice: "Item was saved successfully."
     else
       @checklists = Checklist.all
       flash[:alert] = "Error creating item. Please try again."
       render :index
     end
  end

  def destroy
     @checklist = current_user.checklists.find(params[:id])

     if @checklist.destroy
       redirect_to checklists_path, notice: "Item was deleted."
     else
       @checklists = Checklist.all
       flash[:alert] = "Item couldn't be deleted. Try again."
       render :index
     end

     #respond_to do |format|
     # format.html
     # format.js
     #end
   end

  private

   def checklist_params
     params.require(:checklist).permit(:title)
   end
end
