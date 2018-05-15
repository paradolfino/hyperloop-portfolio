class DeclarationsController < ApplicationController
  
  def create
    @declaration = Declaration.new(declarations_params)
    if @declaration.save
      output = {
        message: "Success"
      }
      
      render :json message
    else
      
    end
  end
  
  private
  
    def declarations_params
      params.require(:declaration).permit(:content, :directory, :git)
    end
  
end
