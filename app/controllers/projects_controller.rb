class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
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
      @project = Project.find(params[:id])      
    end
end
