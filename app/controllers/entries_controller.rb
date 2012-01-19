class EntriesController < ApplicationController
  def index
    @entries = current_user.entries
  end

  def edit
  end

  def new
    @entry = Entry.new :user => current_user
  end

  def create
    @entry = Entry.new params[:entry].merge(:user_id => current_user.id)
    if @entry.save
      redirect_to entries_path
    else
      render :action => :new
    end
  end

  def update
  end

  def destroy
  end

  def show
  end

end
