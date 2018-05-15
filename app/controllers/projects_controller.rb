class ProjectsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
  
  def create
    
  end

  def edit
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  private
  
    def projects_params
      params.require(:project).permit(:title, :frameworks, :languages, :gems, :image)
    end
    
    def set_project
      
    end
end
