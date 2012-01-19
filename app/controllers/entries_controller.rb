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
  end

  def update
  end

  def destroy
  end

  def show
  end

end
