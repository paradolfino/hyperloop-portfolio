class DeclarationsController < ApplicationController
  
  def new
    @declaration = Declaration.new
  end
  
  def create
    @declaration = Declaration.new(declarations_params)
    if @declaration.save
      output = {
        message: "Success"
      }
      
      render json: output
    else
      output = {
        message: "Failure"
      }
      
      render json: output
    end
  end
  
  private
  
    def declarations_params
      params.permit(:content, :directory, :git)
    end
  
end
