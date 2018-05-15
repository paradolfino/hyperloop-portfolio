class DeclarationsController < ApplicationController
  
  def create
    
  end
  
  private
  
    def declarations_params
      params.require(:declaration).permit(:content, :directory, :git)
    end
  
end
