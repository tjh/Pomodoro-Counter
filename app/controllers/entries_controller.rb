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
    @entry = current_user.entries.find params[:id]

    if @entry.destroy
      flash[:success] = 'Entry removed'
    else
      flash[:error] = 'Could not remove that entry. Try again.'
    end

    redirect_to entries_path
  end

  def show
  end

end
