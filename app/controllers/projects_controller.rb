class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :require_login, except: [:show, :index]
  
  def index
    @projects = Project.all.order('id DESC')
  end

  def show
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(projects_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end
  
  def destroy
    @project.destroy
  end
  
  private
  
    def projects_params
      params.require(:project).permit(:title, :frameworks, :languages, :gems, :image)
    end
    
    def set_project
      @project = Project.find(params[:id])      
    end
end
