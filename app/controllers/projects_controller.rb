class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.all.order('id DESC')
  end

  def show
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
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
