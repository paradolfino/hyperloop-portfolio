class EntriesController < ApplicationController
  def create
    @entry = Entry.new(entry_params)
  end
  
  
  private
  
    def entry_params
      params.permit(:content)
    end
end
