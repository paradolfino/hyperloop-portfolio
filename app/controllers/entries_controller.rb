class EntriesController < ApplicationController
  def create
    
  end
  
  
  private
  
    def entry_params
      params.fetch(:entry, {}).permit(:content)
    end
end
